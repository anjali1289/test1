package com.servlet;

import java.sql.*;

public class DBConnection {
	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
		return c;

	}

}


