package com.example.learnci_cd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class LearnCiCdApplication {
    public static void main(String[] args) {
        SpringApplication.run(LearnCiCdApplication.class, args);
    }
}
@RestController
@RequestMapping("/api")
class ApiController {
    @GetMapping("/hello")
    public String hello() {
        return "Hello, GitLab CI/CD!";
    }



}
