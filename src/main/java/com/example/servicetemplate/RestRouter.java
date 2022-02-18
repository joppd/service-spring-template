package com.example.servicetemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestRouter {

    @PostMapping("/mirror")
    public String Response(@RequestBody String args) throws JsonProcessingException
    {
        System.out.println(args);
        String response = args;
        return response;
    }
}
