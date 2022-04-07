<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>
.main {
	overflow: Scroll;
}

.colb {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 20px;
	padding: 10px 20px;
}

.container {
	display: flex;
	align-items: center;
	justify-content: center;
	height: auto;
	width: 100%;
}
</style>
<title>PM Master</title>
</head>
<body>
	<%
					String qu=request.getParameter("q");
					String ye=request.getParameter("y");
					int i=0;
       				Class.forName("com.mysql.jdbc.Driver");  
					
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmmaster","root","");
					
					PreparedStatement st= con.prepareStatement("select * from mastertable where Quater=? and Year=? and pmdone=1");
					
					st.setString(1, qu);
					st.setString(2, ye);
					
			 		ResultSet rs=st.executeQuery(); 
			 		%>
	<div class="container" style="margin-top: 5%">

		<form action="VDataF.jsp" method="post">
			<div class="container">
				<H1>PM Master</H1>
			</div>
			<div class="main">
				<table class="table-bordered" border="1" cellpadding="10" !important>

					<%
			 		while(rs.next()) {
			 				%><tr>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>

						<%
			 				i++;
			 			%>
					</tr>
					<%
			 		}
			 		%>
				</table>
			</div>
	</div>

	<%

			 		String select[] = request.getParameterValues("1"); 
			 		if (select != null && select.length != 0) {
			 		out.println("You have selected: ");
			 		for (int j = 0; j < select.length; j++) {
			 		out.println(select[j]); 
			 		}
			 		}
			 		%>
</body>
</html>