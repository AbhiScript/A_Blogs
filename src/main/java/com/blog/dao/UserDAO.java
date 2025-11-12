package com.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.blog.enums.Role;
import com.blog.model.User;
import com.blog.util.DBConnection;

public class UserDAO {
	public boolean addUser(User user) {
		String sql = "insert into users (username,password,email,role) values (?,?,?,?)";

		try (Connection conn = DBConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getEmail());

			stmt.setString(4, user.getRole().name().toLowerCase());

			int affectedRows = stmt.executeUpdate();

			if (affectedRows == 0) {
				throw new SQLException("Creating user failed, no rows affected");
			}

			try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
				if (generatedKeys.next()) {
					user.setUserId(generatedKeys.getInt(1));
				}
			}

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	public User getUserByEmail(String email) {
		String sql = "SELECT * FROM users WHERE email = ?";

		try(Connection conn = DBConnection.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql)
				){
			stmt.setString(1,email);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt("user_id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setRole(Role.valueOf(rs.getString("role")));
				user.setCreateAt(rs.getTimestamp("create_at"));
				return user;
			}

		}catch(SQLException e) {
			e.printStackTrace();

		}
		return null;
	}

}
