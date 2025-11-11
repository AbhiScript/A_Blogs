package com.blog.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.PostDAO;

@WebServlet("/home")
public class HomeServlet {
	private PostDAO postDao = new PostDAO();
	
    @Override
	protected void doGet(HttpServletRequest request,HttpServletResponse response) {
		
	}
}
