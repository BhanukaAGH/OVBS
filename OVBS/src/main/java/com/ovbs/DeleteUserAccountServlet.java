package com.ovbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteUserAccountServlet")
public class DeleteUserAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		User us = (User) session.getAttribute("user");
		
		if(OVBSDao.deleteuser(us.getId())) {
			session.removeAttribute("user");
			session.invalidate();
			response.sendRedirect("index.jsp");
		}
	}

}
