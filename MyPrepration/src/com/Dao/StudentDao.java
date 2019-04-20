package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.demo.Student;
import com.servlet.DBConnection;

public class StudentDao {


public boolean insert(Student s) {
	Connection con;
	try {
	con=DBConnection.getConnection();
	PreparedStatement ps=con.prepareStatement("insert into student(name,age,username,pass)values(?,?,?,?)");
	
	ps.setString(1,s.getName());
	ps.setInt(2,s.getAge());
	ps.setString(3,s.getUsername());
	ps.setString(4,s.getPass());
	ps.executeUpdate();
	
	}catch(Exception e) {
		e.printStackTrace();
		return false;
	}
	return true;
}

public ArrayList<Student> findAll(){ 
Connection c;
ArrayList<Student> s=new ArrayList<Student> ();
 try {
	 c=DBConnection.getConnection();
	 PreparedStatement ps= c.prepareStatement("select * from student");
	 ResultSet rs= ps.executeQuery();
	 while(rs.next()) {
	  Student s1= new Student();
	    s1.setId(rs.getInt("id"));
		s1.setName(rs.getString("name"));
		s1.setAge(rs.getInt("age"));
		s1.setUsername(rs.getString("username"));
		s1.setPass(rs.getString("pass"));
		s.add(s1);
	 }
 }catch(Exception e) {
	e.printStackTrace(); 
 }	
return s;	

}	

}
