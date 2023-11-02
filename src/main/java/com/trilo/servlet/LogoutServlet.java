package com.trilo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.trilo.entities.Message;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		//get PrintWriter
		PrintWriter pw=res.getWriter();
		//set response content
		res.setContentType("text/html");
		HttpSession s=req.getSession();
		s.removeAttribute("currentUser");
		
		Message msg=new Message("Logout Successfully..", "Success","alert-success");
		
		s.setAttribute("msg", msg);
		
		res.sendRedirect("login.jsp");
		
		
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, res);
	}

}
