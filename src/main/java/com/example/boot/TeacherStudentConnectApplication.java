package com.example.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication

@ComponentScan({"com.tsc.controller"})
@ComponentScan({"com.tsc.service"})
@EnableJpaRepositories(basePackages="com.tsc.dao") 
@EntityScan("com.tsc.entity")  

public class TeacherStudentConnectApplication {

	public static void main(String[] args) {
		SpringApplication.run(TeacherStudentConnectApplication.class, args);
	}

}
