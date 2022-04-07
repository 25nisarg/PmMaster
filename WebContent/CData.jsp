<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.HttpSession"%>
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
					
					session.setAttribute("qua",qu);
					session.setAttribute("yea",ye);
	try{
					
					//String qu=request.getParameter("q");
					//String ye=request.getParameter("y");
       				Class.forName("com.mysql.jdbc.Driver");  
					
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pmmaster","root","");
					
					Statement st= con.createStatement();
					Statement st1= con.createStatement();
					Statement st2= con.createStatement();
					Statement st3= con.createStatement();
			 		ResultSet rs=st.executeQuery("select Distinct(mkmodel) from mastertable where Quater ='"+qu+"'  and Year = '"+ye+"' "); 
			 	//	ResultSet rs=st1.executeQuery();
			 	//	SELECT COUNT(Assets) as pc FROM mastertable;
			 	//	"select Distinct(mkmodel) as pc from mastertable where Quater= 'Q2' and Year = '2022' "
			 		%>
	<div class="container" style="margin-top: 5%">

		<form action="VDataF.jsp" method="post">
			<div class="container">
				<H1>PM MASTER</H1>
			</div>
			<div class="main">
				<table class="table-bordered" border="1" cellpadding="10">
					<th>Assets</th>
					<th>Model</th>
					<th>Total Assets</th>
					<th>Pm Done</th>
					<%
			 		while(rs.next()) {
			 					String s = rs.getString(1);
			 					ResultSet rs3=st3.executeQuery("SELECT assets FROM mastertable where mkmodel='"+s+"' and Quater ='"+qu+"'  and Year = '"+ye+"' ");
			 					
			 				%><tr>
						<td>
							<%
			 					rs3.next();
			 					String a = rs3.getString(1);
			 					out.print(a);
			 				%>
						</td>
						<td>
							<%
			 					out.print(s);
			 					session.setAttribute("asset",s);
			 				%>
						</td>
						<td>
							<%
			 				ResultSet rs1=st1.executeQuery("SELECT Count(mkmodel) FROM mastertable where mkmodel='"+s+"' and Quater ='"+qu+"'  and Year = '"+ye+"' ");
			 				rs1.next();
			 				String q=rs1.getString(1);
			 				out.print(q);
			 				%>
						</td>
						<td>
							<%
			 				ResultSet rs2=st2.executeQuery("SELECT Count(mkmodel) FROM mastertable where pmdone=1 and mkmodel='"+s+"' and Quater ='"+qu+"'  and Year = '"+ye+"' ");
			 				rs2.next();
			 				String r=rs2.getString(1);
			 				%><a href="DataV.jsp?Sid=<%=s%> ">
								<%out.print(r);%>
						</a>
							<%
			 				%>
						</td>
						<%
			 			//	i++;
			 			%>
					</tr>
					<%
			 		}
			 		}
			 		catch(Exception e){
			 			out.print(e);
			 		}
			 		%>
				</table>
			</div>

		</form>
	</div>


</body>
</html>