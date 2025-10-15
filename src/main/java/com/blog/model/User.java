package com.blog.model;

import java.util.Date;

import com.blog.enums.Role;

public class User {
	private int userId;
	private String username;
	private String password;
	private String email;
	private Role role;
	private Date createAt;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int i) {
		this.userId = i;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}


}
