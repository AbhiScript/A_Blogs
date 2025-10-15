package com.blog.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.UserDAO;
import com.blog.enums.Role;
import com.blog.model.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private UserDAO userDao = new UserDAO();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String roleStr = request.getParameter("role");

		Role role = Role.valueOf(roleStr.toUpperCase());

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setEmail(email);
		user.setRole(role);

		boolean success = userDao.addUser(user);

		if (success) {
			response.sendRedirect("login.jsp?success=registered");
		} else {
			response.sendRedirect("register.jsp?error=failed");
		}
	}
}
