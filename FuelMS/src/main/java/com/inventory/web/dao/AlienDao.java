package com.inventory.web.dao;

import com.inventory.web.model.Alien;
import java.sql.*;

public class AlienDao {

	public Alien getAlien(int aid) {
		Alien a= new Alien();
		/*
		 * a.setAid(aid); a.setAname("AOne"); a.setTech("java");
		 */
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fuel_ms","root","root");
			Statement st = conn.createStatement();
			ResultSet rs=st.executeQuery("SELECT * FROM alien where aid="+aid);
			if(rs.next()) {
			a.setAid(rs.getInt("aid"));	
			a.setAname(rs.getString("aname"));
			a.setTech(rs.getString("tech"));
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return a;
	}
}
