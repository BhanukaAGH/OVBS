package com.ovbs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String CurrentPassword = request.getParameter("Currentpass");
		String NewPassword = request.getParameter("Newpass");
		String ReEnterPassword = request.getParameter("Reenterpass");
		
		HttpSession session = request.getSession();
		User us = (User) session.getAttribute("user");
		
		if(us.getPassword().equals(CurrentPassword)  && NewPassword.equals(ReEnterPassword)) {
			if(OVBSDao.changepassword(us.getId(), NewPassword)) {
				us.setPassword(NewPassword);
				String msg = "<span>!</span> Password changed is success.";
				request.setAttribute("changePasswordsuccess", msg);
				request.getRequestDispatcher("profile.jsp").forward(request, response);
			}
		}else {
			String msg = "<span>!</span> Current Password is Invalid or Password re-entry does not match.";
			request.setAttribute("changePasswordmessage", msg);
			request.getRequestDispatcher("profile.jsp").forward(request, response);
		}
		
	}

}
