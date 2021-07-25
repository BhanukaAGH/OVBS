package com.ovbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OVBSDao {

	private static Connection conn = null;
	private static PreparedStatement stmt = null;
	private static ResultSet rs = null;

	public static User validate(String email, String password) {
		User user = null;
		try {
			conn = DBConnect.getConnection();
			String sql = "select * from ovbs.user where email=? and password =?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			if (rs.next()) {
				int userid = rs.getInt(1);
				String uname = rs.getString(2);
				String Email = rs.getString(3);
				String Pass = rs.getString(4);
				String Type = rs.getString(5);
				user = new User(userid, uname, Email, Pass, Type);
				return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return user;
	}
	
	
	public static boolean insert(String uname, String email, String password) {
		
		try {
			conn = DBConnect.getConnection();
			String sql = "insert into ovbs.user(username,email,password) values(?, ?, ?);";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, uname);
			stmt.setString(2, email);
			stmt.setString(3, password);
			int result = stmt.executeUpdate();
			
			if(result > 0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	public static boolean updateuser(int id, String Uuname, String Uemail) {
		
		try {
			conn = DBConnect.getConnection();
			String sql = "update ovbs.user set username=? ,email=? where id=?;";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, Uuname);
			stmt.setString(2, Uemail);
			stmt.setInt(3, id);
			int result = stmt.executeUpdate();
			
			if(result > 0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	public static boolean changepassword(int id, String newPassword) {
		
		try {
			conn = DBConnect.getConnection();
			String sql = "update ovbs.user set password=? where id=?;";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, newPassword);
			stmt.setInt(2, id);
			int result = stmt.executeUpdate();
			
			if(result > 0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	public static boolean deleteuser(int id) {
		
		try {
			conn = DBConnect.getConnection();
			String sql = "delete from ovbs.user where id=?;";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			int result = stmt.executeUpdate();
			
			if(result > 0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	public static boolean updateuserType(int id) {
		
		try {
			conn = DBConnect.getConnection();
			String sql = "update ovbs.user set type=? where id=?;";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, "admin");
			stmt.setInt(2, id);
			int result = stmt.executeUpdate();
			
			if(result > 0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}


	public static boolean deleteuserAccAdmin(int id) {
		
		try {
			conn = DBConnect.getConnection();
			String sql = "delete from ovbs.user where id=?;";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			int result = stmt.executeUpdate();
			
			if(result > 0) {
				return true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
}
