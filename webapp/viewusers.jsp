<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
		<form action ="viewUser" method ="get">
Enter User Id:<input type = "text" name ="userId"><br>
<input type ="submit" value ="VIEWUSERS">
</form>
<form action ="viewAllUser" method ="get">
<input type ="submit" value ="VIEWALLUSERS">
</form>
</body>
</html>