package com.login.Dao;

import java.sql.*;

public class LoginDao {
	
	String sql="select * from user where user=? and pass=?";
	public boolean check(String uname, String pass) {
		
		try
		{		
			
				Class.forName("com.mysql.jdbc.Driver");  
				
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmmaster","root","");
				
				PreparedStatement st= con.prepareStatement(sql);
				
				st.setString(1, uname);
				st.setString(2, pass);
				
		 		ResultSet rs=st.executeQuery(); 
		 		
		 		if(rs.next()){
		 			return true;
		 		}
		 		
		}
		catch(Exception e){
			System.out.println(e);	
		}
		
		return false;
		
		
	}

}
