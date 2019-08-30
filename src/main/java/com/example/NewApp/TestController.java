package com.example.NewApp;

// import org.springframework.web.bind.annotation.DeleteMapping;
// import org.springframework.web.bind.annotation.GetMapping;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.PutMapping;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/")
public class TestController{

	//Route for default 
	@RequestMapping("/")
	@GetMapping
	public String helloWorld(){
		return "<h1>Hello Users!! Page is currently being build. other route '/users', '/addusers' use postman</h1>";
	}

	@RequestMapping("/users")
	@GetMapping
	public String getUser(){
		return "<h1>Get user is called</h1>";
	}

	//GET route
	@RequestMapping("/addusers")
	public String getData(@RequestParam(value = "userName", defaultValue="Anupal", required=false) String userName,
						@RequestParam(value = "userPassword", defaultValue="notaprogrammeryet", required=false) String userPassword
						){
		
		User user = new User(userName, userPassword);

		return "GET method is called. Username is <b>" + user.getUserName() + "</b>. Password is <b>" + user.getUserPassword()+"</b>";
		
	}

	//POST route
	@RequestMapping(method = RequestMethod.POST, value = "/addusers")
	public String registerUser(@RequestBody User user){

		return "POST method is called. Username is <b>" + user.getUserName() + "</b>. Password is <b>" + user.getUserPassword()+"</b>";
	}	
}



