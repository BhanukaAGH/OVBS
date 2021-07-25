package com.ovbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		if(OVBSDao.insert(uname, email, pass)) {
			response.sendRedirect("sign-in.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
		
	}

}
