package com.demo;

public class Student {
int id;
String name;
int age;
String username;
String pass;


public Student() {
	super();
}


public Student(String name, int age, String username, String pass) {
	super();
	this.name = name;
	this.age = age;
	this.username = username;
	this.pass = pass;
}


public Student(int id, String name, int age, String username, String pass) {
	super();
	this.id = id;
	this.name = name;
	this.age = age;
	this.username = username;
	this.pass = pass;
}


public Student(String username, String pass) {
	super();
	this.username = username;
	this.pass = pass;
}


public int getId() {
	return id;
}


public void setId(int id) {
	this.id = id;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public int getAge() {
	return age;
}


public void setAge(int age) {
	this.age = age;
}


public String getUsername() {
	return username;
}


public void setUsername(String username) {
	this.username = username;
}


public String getPass() {
	return pass;
}


public void setPass(String pass) {
	this.pass = pass;
}


@Override
public String toString() {
	return "Student [id=" + id + ", name=" + name + ", age=" + age + ", username=" + username + ", pass=" + pass + "]";
}


	
	
	
}
