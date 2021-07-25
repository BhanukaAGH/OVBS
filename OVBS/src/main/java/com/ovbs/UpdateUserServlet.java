package com.ovbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Uuname = request.getParameter("Uuname");
		String Uemail = request.getParameter("Uemail");
		
		HttpSession session = request.getSession();
		User us = (User) session.getAttribute("user");
		
		if(OVBSDao.updateuser(us.getId(), Uuname, Uemail)) {
			us.setUsername(Uuname);
			us.setEmail(Uemail);
			String msg = "<span>!</span> Profile changed is success.";
			request.setAttribute("changeprofilesuccess", msg);
			request.getRequestDispatcher("profile.jsp").forward(request, response);
		}else {
			String msg = "<span>!</span> Profile changed is unsuccess.";
			request.setAttribute("changeprofilemessage", msg);
			request.getRequestDispatcher("profile.jsp").forward(request, response);
		}
		
	}

}
