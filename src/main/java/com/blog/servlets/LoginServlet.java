package com.blog.servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.blog.dao.UserDAO;
import com.blog.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private UserDAO userDAO = new UserDAO();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = userDAO.getUserByEmail(email);

		if (user != null && user.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", user);

			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("login.jsp?error=invalid");
		}
	}
}
