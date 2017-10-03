package com.aaylprj;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String userID = "admin";
	private final String password = "password";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MyDBConnect dbconn = new MyDBConnect();
		Connection conn = dbconn.createConn();
		Statement stmt = null;
		String email = request.getParameter("email");
		String passWord = request.getParameter("passWord");
		String sql = "select * from users_16329 where email='" + email + "'";
		try {
			HttpSession session = request.getSession();
			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (!rs.isBeforeFirst() ) {    
			    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				request.setAttribute("message", "Wrong Username");
				rd.forward(request, response);
			} 
			while (rs.next()) {
				if (passWord.equals(rs.getString(5))) {
					session.setAttribute("user", email);
					session.setMaxInactiveInterval(30 * 60);
					Cookie userName = new Cookie("user", rs.getString(1)+" "+rs.getString(2));
					userName.setMaxAge(30 * 60);
					response.addCookie(userName);
					response.sendRedirect("jsp/success.jsp");
				} 
				else {
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					request.setAttribute("message", "Wrong Password");
					rd.forward(request, response);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("vikas1");
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
