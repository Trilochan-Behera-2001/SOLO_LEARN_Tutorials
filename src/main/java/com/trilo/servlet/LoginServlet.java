package com.trilo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.trilo.entities.Message;
import com.trilo.dao.UserDao;
import com.trilo.entities.User;
import com.trilo.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//get PrintWriter
		PrintWriter pw=res.getWriter();
		// set content type
		res.setContentType("text/html");
		
		//login
		//fetch user name and password from request
		String userEmail=req.getParameter("email");
		String userPassword=req.getParameter("password");
		
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		
		User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
		if(u==null) {
			//login.......
//			error//
			//pw.println("Invalid Details.. try again");
			Message msg=new Message("Invalid Deatils ! try with another","error","alert-danger"); 
			HttpSession s=req.getSession();
			s.setAttribute("msg", msg);
			
			
			res.sendRedirect("login.jsp");
		}
		else {
			//login success
			HttpSession s=req.getSession();
			s.setAttribute("currentUser", u);
			res.sendRedirect("profile.jsp");
		}
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 doGet(req, res);
	}

}
