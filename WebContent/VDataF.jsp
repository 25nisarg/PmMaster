<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>PM Master</title>
</head>
<body>
	<%
try{
       				Class.forName("com.mysql.jdbc.Driver");  
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmmaster","root","");
					
					String select[] = request.getParameterValues("1");
					
					if (select != null && select.length != 0) {
			 		for (int j = 0; j < select.length; j++) {
					PreparedStatement st= con.prepareStatement("UPDATE mastertable SET pmdone = '1' WHERE ID = ?");
					st.setString(1, select[j]);
					out.println(select[j]);
					st.executeUpdate();
					response.sendRedirect("Home.jsp");
						}
					}
			 		else{
			 		 if (select == null && select.length == 0) {
			 		 response.sendRedirect("Home.jsp");
			 		 }
			 		}
			 		
			 		
					//st.setString(1, qu);
					//st.setString(2, ye);
				}
				catch(Exception e){
					out.print(e);
				}	
			 		 
			 		%>
</body>
</html>