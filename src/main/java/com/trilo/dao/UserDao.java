package com.trilo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.trilo.entities.User;

public class UserDao {
	
	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	//to insert user to data base
	public boolean saveUser(User user) {
		boolean f=false;
		try {
			//user---> data base
			String query="INSERT INTO USER(NAME,EMAIL,PASSWORD,GENDER,ABOUT) VALUES(?,?,?,?,?)";
			PreparedStatement ps=this.con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getAbout());
			
			ps.executeUpdate();
			f=true;
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	//get User by userEmail and Userpassword
	public User getUserByEmailAndPassword(String email,String password) {
		User user=null;
		try {
			String query="SELECT * FROM USER WHERE EMAIL=? AND PASSWORD=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) 
			{
			user=new User();
			//data from db
			String name=rs.getString("name");
			//set to user Object
			user.setName(name);
			user.setId(rs.getInt("id"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
			user.setGender(rs.getString("gender"));
			user.setAbout(rs.getString("about"));
			user.setDateTime(rs.getTimestamp("rdate"));
			user.setEmail(rs.getString("email"));
			user.setProfile(rs.getString("profile"));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	public boolean updateUser(User user) {
		boolean f=false;
		try {
			String query="UPDATE USER SET NAME=? , EMAIL=?, PASSWORD=?,GENDER=?,ABOUT=?,PROFILE=? WHERE ID=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getAbout());
			ps.setString(6, user.getProfile());
			ps.setInt(7, user.getId());
			
			ps.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	
}
