<%@page import="com.demo.Student"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        
                       
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <% 
                                try{
                                ArrayList<Student> s1= ( ArrayList<Student>)request.getAttribute("s");
                                
                                %>
                                    <tr>
                                        <th>Name</th>
                                        <th>Skill</th>
                                        <th>Experience</th>
                                        <th>Location</th>
                                         <th>Contact No</th>
                                          <th>Email Id</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <%for(Student a:s1) {%>
 <tr class="odd gradeX">
<td><%=a.getName()%></td>
 
 <td><%=a.getAge() %></td>
<td><%=a.getUsername() %></td>
<td><%=a.getPass() %></td>
 <td><buttton>edit</buttton></td>
<td><buttton>delete</buttton></td>
</tr>
<%}
                                }catch(Exception e){
                                e.printStackTrace();	
                                }
%>
                                   
                                  
                             
                                    
                                </tbody>
                            </table>
                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            
</body>
</html>