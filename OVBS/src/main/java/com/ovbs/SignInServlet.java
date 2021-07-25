package com.ovbs;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		OVBSDao dao = new OVBSDao();
		User user = OVBSDao.validate(email, password);

		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			if (user.getType().equals("user")) {
				response.sendRedirect("login.jsp");
			} else if (user.getType().equals("admin")) {
				response.sendRedirect("adminlogin.jsp");
			}

		} else {
			String messages = "<span>!</span> Username or password is Invalid";
			request.setAttribute("messages", messages);
			request.getRequestDispatcher("sign-in.jsp").forward(request, response);
		}

	}

}
