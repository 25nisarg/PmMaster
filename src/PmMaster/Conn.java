package PmMaster;
import java.sql.*;
public class Conn {

	public static void main(String[] args) {
		try{  
			Connection con=Provider.getCon(); 
			Statement stmt=con.createStatement();  
			}
		catch(Exception e) {
			
		}
	}
}
