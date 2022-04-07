package PmMaster;

import java.sql.*;

public class Provider {
	private static Connection con=null;  
	static{  
	try{  
	Class.forName("com.mysql.jdbc.Driver");  
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pmmaster","root","");  
	}catch(Exception e){}  
	}  
	  
	public static Connection getCon(){  
	    return con;  
	}  
}
