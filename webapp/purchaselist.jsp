<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ page import="java.util.List" %>
   <%@ page import="com.spring.sboot1.entity.UserPurchase" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<title>Insert title here</title>
<style>
		body{
				background-image: url("C:/Users/ES/Desktop/u_n_me_bgpic.webp");}
				input[type=text], select {
  				width: 30%;
  				padding: 10px 20px;
  				margin: 4px 0;
  				display: inline-block;
  				border: 1px solid #ccc;
  				border-radius: 4px;
  				box-sizing: border-box;
			}

			input[type=submit] {
  				width: 30%;
 				 background-color: #4CAF50;
 				 color: white;
 				 padding: 10px 20px;
 				 margin: 5px 0;
 				 border: none;
 				 border-radius: 4px;
 				 cursor: pointer;
			}
				input[type=date], select {
				  width: 30%;
  				padding: 10px 20px;
  				margin: 4px 0;
 				 display: inline-block;
 				 border: 1px solid #ccc;
 				 border-radius: 4px;
 				 box-sizing: border-box;
			}
</style>
</head>
<body>
<%int id = (int)request.getAttribute("userId");
out.println("<h1 align = 'center'>Purchase details of "+id+"</h1>");%>

<div class = "container">
	<%
   List<UserPurchase> plist = (List<UserPurchase>)request.getAttribute("list");
		if(plist!=null){
   out.println("<table class='table table-dark table-hover'><tr><th>Purchase ID</th><th>Product Id</th><th>User Id</th><th>Product cost</th></tr>");
	for(UserPurchase up: plist){
		out.println("<tr><td>"+up.getPurchaseId()+"</td><td>"+up.getProductid()+"</td><td>"+up.getUserId()+"</td><td>"+up.getPcost()+"</td></tr>");
	}
	
	out.println("</table>");
		}
%>
</div>
</body>
</html>