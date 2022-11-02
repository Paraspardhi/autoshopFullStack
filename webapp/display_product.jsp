<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.spring.sboot1.entity.Product"%>
    <%@ page import="java.util.List" %>
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
<body>
	
	<%
		String s = (String)request.getAttribute("type");
		if(s.equals("single")){
			Product p = (Product)request.getAttribute("prd");
			out.println("<table class='table table-dark table-hover'><tr><th>Product Id</th><th>Product Name</th><th>Product Type</th><th>Product Cost</th></tr>");
			out.println("<tr><td>"+p.getPid()+"</td><td>"+p.getPname()+"</td><td>"+p.getPtype()+"</td><td>"+p.getPcost()+"</td></tr></table>");
		}
		else if(s.equals("list"))
		{
			List<Product> pl = (List<Product>)request.getAttribute("plist");
			out.println("<table class='table table-dark table-hover'><tr><th>Product Id</th><th>Product Name</th><th>Product Type</th><th>Product Cost</th></tr>");
			for(Product p:pl){
				out.println("<tr><td>"+p.getPid()+"</td><td>"+p.getPname()+"</td><td>"+p.getPtype()+"</td><td>"+p.getPcost()+"</td></tr>");
			}
			out.println("</table>");
		}
			
		
	%>
</body>
</html>