package com.example.servicetemplate;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RestRouter {

    @GetMapping("/mirror")
    public String Response(String args)
    {
        System.out.println(args);
        String response = "{\"response_value\":\"hello world\" }";
        return response;
    }
}
