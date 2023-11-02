package com.trilo.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.trilo.dao.UserDao;
import com.trilo.entities.Message;
import com.trilo.entities.User;
import com.trilo.helper.ConnectionProvider;
import com.trilo.helper.Helper;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;


@MultipartConfig
public class EditServletE extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// get PrintWriter
				PrintWriter pw=res.getWriter();
				// set content type
				res.setContentType("text/html");
				
				String userName=req.getParameter("user-name");
				String userEmail=req.getParameter("user-email");
				String userPassword=req.getParameter("user-password");
				String userAbout=req.getParameter("user-about");
				
				Part part=req.getPart("user-image");
				String imageName=part.getSubmittedFileName();
				
				// get The user from the session
				HttpSession s=req.getSession();
				User user=(User)s.getAttribute("currentUser");
				user.setName(userName);
				user.setEmail(userEmail);
				user.setPassword(userPassword);
				user.setAbout(userAbout);
				String oldFile=user.getProfile();
				user.setProfile(imageName);
				
				// update the data base
				UserDao userDao=new UserDao(ConnectionProvider.getConnection());
				boolean ans=userDao.updateUser(user);
				if(ans) {
					ServletContext sc=req.getServletContext();
					String path=sc.getRealPath("/")+"profilepics"+File.separator+user.getProfile();
						
					    //delete code
					
					String oldFilePath=sc.getRealPath("/")+"profilepics"+File.separator+oldFile;
					if(!oldFile.equals("default.png"))
					Helper.deleteFile(oldFilePath);
						
						
						if(Helper.saveFile(part.getInputStream(), path)) {
							pw.println("Profile Updated...");
							Message msg=new Message("Profile Deatils Updated","success","alert-success"); 
							s.setAttribute("msg", msg);
						}
						else {
							Message msg=new Message("Some thing went Wrong","error","alert-danger"); 
							s.setAttribute("msg", msg);
						}
				}
				else {
					pw.println("Not Updated");
				Message msg=new Message("Some thing went Wrong","error","alert-danger"); 
				s.setAttribute("msg", msg);
				}
				
				/*For checking the photos which you are upload as profile and also edited in profile.jsp page
				 * 
				C:\Users\tri28\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\TechBlog\profilepics*/
				
				
				
				res.sendRedirect("profile.jsp");
				pw.close();
				
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, res);
	}

}
