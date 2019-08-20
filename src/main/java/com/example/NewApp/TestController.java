package com.example.NewApp;

// import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class TestController{

	@RequestMapping("/")
	@GetMapping
	public String helloWorld(){
		return "<h1>Hello Users!! Page is currently being build. other route '/users'</h1>";
	}

	@RequestMapping("/users")
	@GetMapping
	public String getUser(){
		return "<h1>Get user is called</h1>";
	}
}



