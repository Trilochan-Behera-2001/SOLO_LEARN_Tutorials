package com.trilo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import com.trilo.dao.UserDao;
import com.trilo.entities.User;
import com.trilo.helper.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// get PrintWriter
		PrintWriter pw=res.getWriter();
		//set response content
		res.setContentType("text/html");
		String check=req.getParameter("check");
		if(check==null)
			pw.println("box not Checked");
		else {
			String name=req.getParameter("user_name");
			String email=req.getParameter("user_email");
			String password=req.getParameter("user_password");
			String gender=req.getParameter("gender");
			String about=req.getParameter("about");
			
			//create a user object and sett all data to that object
			User user=new User(name,email,password,gender,about); 
			
			//create a user dao object
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			if(dao.saveUser(user)) {
				//save
				pw.println("Done");
			}
			else {
				pw.println("Error");
			}
			
		}
		pw.close();
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		doGet(req, res);
	}

}
