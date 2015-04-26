package com.example;

import javax.ejb.Stateless;

@Stateless(name = "HelloWorld", mappedName = "EJB3-HelloWorldBean")
public class HelloWorld implements HelloWorldLocal {

	/**
	 * Default constructor.
	 */
	public HelloWorld() {
		// TODO Auto-generated constructor stub
	}

	public String hello(String name) {
		return "Hello  " + name + "!";
	}

}
