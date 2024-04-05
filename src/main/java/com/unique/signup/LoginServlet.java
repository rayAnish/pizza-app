package com.unique.signup;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		String uname = request.getParameter("username");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		System.out.println("LoginServlet class do post method, username : "+uname+" pwd : "+upwd);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useSSL=false","root","root");
			PreparedStatement pst = con.prepareStatement("select * from users where uname =? and upwd =?");
			pst.setString(1,uname);
			pst.setString(2,upwd);
			
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("name", rs.getString("uname"));
				dispatcher = request.getRequestDispatcher("/index.jsp");
				System.out.println("LoginServlet class if block");
				
			}else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("/login.jsp");
				System.out.println("LoginServlet class else block");
				
			}
			dispatcher.include(request,response);
			System.out.println("LoginServlet class forward");
		}catch (Exception e) {
			e.printStackTrace();
			
		}
	}

}
