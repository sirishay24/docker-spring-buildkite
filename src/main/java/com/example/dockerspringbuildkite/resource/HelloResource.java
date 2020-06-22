package com.example.dockerspringbuildkite.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/buildkite/docker/hello")
public class HelloResource {

    @GetMapping
    public String hello(){
        return "Hello Youtube!!";
    }
}
