package com.Dao;

import java.util.ArrayList;

import com.demo.Student;

public class test {
    public static void main(String args[]) {
//	Student s= new Student("anj",32,"ass","dd");
	StudentDao d= new StudentDao();
	ArrayList<Student> s = d.findAll();
	for(Student k:s) {
		System.out.println(k);
	}
//	System.out.println(d.insert(s));

    
    }
}
