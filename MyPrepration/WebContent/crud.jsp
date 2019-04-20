<%@page import="com.demo.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
  border: 1px solid black;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<% try{
 ArrayList<Student> s1= ( ArrayList<Student>)request.getAttribute("s");%>
<tr>name</tr>
<tr>age</tr>
<tr>username</tr>
<tr>pass</tr>
<tr>edit</tr>
<tr>delete</tr>


 <%for(Student a:s1) {%>
<tr>
<td><%=a.getName()%></td>
 
 <td><%=a.getAge()%></td>
<td><%=a.getUsername()%></td>
<td><%=a.getPass()%></td>
 <td><buttton>edit</buttton></td>
<td><buttton>delete</buttton></td>
</tr>
<%}
}catch(Exception e){
e.printStackTrace();	
}
 %>
</table>
</body>
</html>