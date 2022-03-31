# build image by *.jar file
# FROM eclipse-temurin:17.0.2_8-jre
# RUN mkdir /opt/app
# COPY build/libs/*.jar /opt/app/japp.jar
# EXPOSE 25470
# CMD ["java", "-jar", "/opt/app/japp.jar"]

# compile project and build image
FROM eclipse-temurin:17.0.2_8-jdk-alpine
COPY . /japp
WORKDIR /japp
RUN chmod 755 /japp/gradlew && ./gradlew bootjar
RUN cp build/libs/*.jar build/libs/japp.jar
EXPOSE 25470
CMD ["java", "-jar", "build/libs/japp.jar"]

