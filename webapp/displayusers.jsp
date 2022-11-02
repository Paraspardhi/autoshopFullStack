<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.spring.sboot1.entity.User"%>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<title>User details</title>
</head>
<body>
	<h1>User details</h1>
	<%
		String s = (String)request.getAttribute("type");
		if(s.equals("single")){
			User u = (User)request.getAttribute("user");
			out.println("<table class='table table-dark table-hover'><tr><th>User Id</th><th>FirstName</th><th>LastName</th><th>DOB</th><th>EmailId</th><th>MblNo</th><th>Balance</th><th>Password</th><th>Adress</th></tr>");
			out.println("<tr><td>"+u.getUserId()+"</td><td>"+u.getFirstName()+"</td><td>"+u.getLastName()+"</td><td>"+u.getDOB()+"</td><td>"+u.getEmailId()+"</td><td>"+u.getMblNo()+"</td><td>"+u.getBalance()+"</td><td>"+u.getPassword()+"</td><td>"+u.getAdress()+"</td></tr></table>");
		}
		else if(s.equals("list"))
		{
			List<User> ul = (List<User>)request.getAttribute("ulist");
			out.println("<table class='table table-dark table-hover'><tr><th>User Id</th><th>FirstName</th><th>LastName</th><th>DOB</th><th>EmailId</th><th>MblNo</th><th>Balance</th><th>Password</th><th>Adress</th></tr>");
			for(User u:ul){
				out.println("<tr><td>"+u.getUserId()+"</td><td>"+u.getFirstName()+"</td><td>"+u.getLastName()+"</td><td>"+u.getDOB()+"</td><td>"+u.getEmailId()+"</td><td>"+u.getMblNo()+"</td><td>"+u.getBalance()+"</td><td>"+u.getPassword()+"</td><td>"+u.getAdress()+"</td></tr>");
			}
			out.println("</table>");
		}
			

		
	%>
</body>
</html> 