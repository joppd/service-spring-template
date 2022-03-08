FROM eclipse-temurin:17.0.2_8-jre
RUN mkdir /opt/app
COPY build/libs/*.jar /opt/app/japp.jar
EXPOSE 25470
CMD ["java", "-jar", "/opt/app/japp.jar"]


#FROM eclipse-temurin:17.0.2_8-jre
#VOLUME /tmp
#ARG JAR_FILE
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]