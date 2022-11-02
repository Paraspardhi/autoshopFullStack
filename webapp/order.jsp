<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

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
		
		
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark ">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">      </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar" style="justify-content:center">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Dashboard.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart.jsp">Cart</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="order.jsp">order</a>
        </li>  
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">All parts</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Engines Part</a></li>
            <li><a class="dropdown-item" href="#">Tyres</a></li>
            <li><a class="dropdown-item" href="#">Interior</a></li>
	    <li><a class="dropdown-item" href="#">Headlamps</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
		
<h1>Check your Order here</h1>
<form action="getOrder" method="get">
			<label> UID </label>
			<input type = "text" name ="userId"><br>			
			<input type ="submit" value ="GET ORDER LIST">
			</form>
</body>
</html>