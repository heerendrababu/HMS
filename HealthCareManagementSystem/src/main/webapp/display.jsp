<%@page import="java.util.ArrayList"%>
<%@page import="com.shivintech.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>
<style>
div {
	margin-left: 550px;
}
</style>
</head>
<body>
<div>
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Doctors Details</h1>
	<table border = "1">
		<tr>
			<th>id</th>
			<th>name</th>
			<th>email</th>
			<th>Profession</th>
			<th>Password</th>
			<th>mobile</th>
		</tr>
		
	<!--  getAttribute() will return object type so convert to Doctor type and store it in variable 'd'
	  but here we are getting data as ArrayList of Doctor type from controller -->
		<%
		ArrayList<Doctor> al = (ArrayList<Doctor>) request.getAttribute("list"); 
	    for(Doctor d: al)
	    {
	      %>  
	     <tr>
	             <td><%=d.getDid() %></td>
	     	     <td><%=d.getName() %></td>
	     	     <td><%=d.getEmail() %></td>
	     	     <td><%=d.getProfession() %></td>
	     	     <td><%=d.getPassword() %></td>
	     	     <td><%=d.getMobile() %></td>
	     	     
	     
	     </tr>
        <%
	      }
         %>
	   
	</table>
	 </div>
</body>
</html>