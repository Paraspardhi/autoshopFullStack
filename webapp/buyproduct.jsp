<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import =  "com.spring.sboot1.entity.User"%>
      <%@ page import =  "com.spring.sboot1.entity.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- bootstrap links -->
<!-- fonts links -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Merriweather&display=swap"
	rel="stylesheet">
<!-- fonts links -->
<!-- Bootstrap Font Icon CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<!-- Bootstrap Font Icon CSS -->
<style>

body{
   margin: 0;
   padding: 0;
   font-family: Arial;
   background: url(image/buylaptop.jpg);
   background-size: cover;
   background-position: center; 
}
img {
    weidth: 400;
    height: 400;
}
table, tr, th, td{
   width: 800px;
   margin: auto;
   font-size: 30px;
   padding: 20px;
   text-align: center;
   border: 2px solid #000;
}
</style>
</head>
<body>
<div align="right">
	<a href="login.jsp"><button class= "btn btn-secondary">Sign Out</button></a> 
	</div>
<%
Product p = (Product)request.getAttribute("Product");
	User u = (User)request.getAttribute("user");
%>
	<h1> Hello <%=u.getFirstName()+" "+u.getLastName()%></h1>
	<%
		Boolean flag = (Boolean)request.getAttribute("flag");
	
		if(flag){
			
			out.println("<img src='image/"+p.getPimg()+"' alt='"+p.getPname()+"'height='300px' width='300px' >");
			out.println("<dl><dt>"+p.getPid()+"</dt><dt>"+p.getPname().toUpperCase()+"</dt><dt>"+p.getPtype().toUpperCase()+"</dt><dt>"+p.getPcost()+"</dt><dt>"+p.getPquantity()+"</dt></dl>");
			out.println("<form action='purchaseProduct' method='post'>");
			out.println("<input type='hidden' name='pid' value='"+p.getPid()+"'>");
			out.println("<input type='hidden' name='UserId' value='"+u.getUserId()+"'>");
			out.println("<input type='submit' class='btn btn-success' value='Buy Now'>");
			out.println("</form>");
		}
		
		else{
			out.println("<h1>Sorrry for the inconvinience try after sometime..!!");
		}
	
	%>
	

</body>
</html>