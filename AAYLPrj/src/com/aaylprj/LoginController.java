package com.aaylprj;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MyDBConnect dbconn = new MyDBConnect();
		Connection conn = dbconn.createConn();
		Statement stmt = null;
		String email = request.getParameter("email");
		String passWord = request.getParameter("passWord");
		String sql = "select * from users_16329 where email='" + email + "'";
		try {

			stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				if (passWord.equals(rs.getString(5))) {
					System.out.printf("inside if" + rs.getString(5), rs.getString(3));
					RequestDispatcher rd = request.getRequestDispatcher("jsp/homepage.jsp");
					request.setAttribute("message", "Login Successful");
					rd.forward(request, response);
					response.sendRedirect("jsp/success.jsp");
				} else {
					System.out.println("inside else");
					response.sendRedirect("jsp/error.jsp");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
