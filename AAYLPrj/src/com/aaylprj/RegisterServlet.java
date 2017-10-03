package com.aaylprj;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterController")
public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MyDBConnect dbconn = new MyDBConnect();
		Connection conn = dbconn.createConn();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		long mobileNumber = Long.parseLong(request.getParameter("mobileNumber"));
		String passWord = request.getParameter("passWord");
		PreparedStatement stmt;
		try {
			stmt = conn.prepareStatement("insert into users_16329 values(?,?,?,?,?)");
			stmt.setString(1, firstName);
			stmt.setString(2, lastName);
			stmt.setString(3, email);
			stmt.setLong(4, mobileNumber);
			stmt.setString(5, passWord);
			stmt.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			request.setAttribute("message", "Registration Successful");
			rd.forward(request, response);

		} catch (SQLException e1) {
			e1.printStackTrace();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
