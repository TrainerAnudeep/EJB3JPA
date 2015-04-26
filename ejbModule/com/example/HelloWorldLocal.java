package com.example;
import javax.ejb.Remote;

@Remote
public interface HelloWorldLocal {
	public String hello(String name);
}
