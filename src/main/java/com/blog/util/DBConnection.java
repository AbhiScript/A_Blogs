package com.blog.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static final String URL = "jdbc:mysql://localhost:3306/blog_app";
	private static final String USER = "root";
	private static final String PASSWORD = "Root@1234";

	private static Connection connection;
	private DBConnection() {}

	public static Connection getConnection() throws SQLException {
		if(connection == null || connection.isClosed()) {
			connection = DriverManager.getConnection(URL,USER,PASSWORD);
		}
		return connection;
	}

}
