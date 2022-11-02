<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

<style>
body, html {
  height: 100%;
  font-family: Times New Roman, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("image\auto1.jpg");

  min-height: 480px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 500px;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}

			     
			     .grainy-gradient-intro:before, .grainy-gradient-intro:after {
  position: fixed;
  inset: 0;
  z-index: -1;
  --grad: radial-gradient(at 10%, red, rgba(255, 0, 0, 0.3) 95%, transparent 80%);
  --mask: var(--grad), var(--grad);
  -webkit-mask: var(--mask);
  -webkit-mask-composite: source-in;
  -webkit-mask: var(--mask);
  mask: var(--mask);
  -webkit-mask-composite: source-in, xor;
  mask-composite: intersect;
  mix-blend-mode: unset;
  content: "";
}

.grainy-gradient-intro:after {
   background: linear-gradient(
90deg, #760dfe 20%, #f51b26, #fd9900);
}

</style>
</head>
<body>

<section class="grainy-gradient-intro">
  <svg height="0" width="0">
    <filter id='f'>
      <feTurbulence type='fractalNoise' baseFrequency='.5' />
    </filter>
  </svg>
 
</section>


<p align="center"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-tools" viewBox="0 0 16 16">
  <path d="M1 0 0 1l2.2 3.081a1 1 0 0 0 .815.419h.07a1 1 0 0 1 .708.293l2.675 2.675-2.617 2.654A3.003 3.003 0 0 0 0 13a3 3 0 1 0 5.878-.851l2.654-2.617.968.968-.305.914a1 1 0 0 0 .242 1.023l3.27 3.27a.997.997 0 0 0 1.414 0l1.586-1.586a.997.997 0 0 0 0-1.414l-3.27-3.27a1 1 0 0 0-1.023-.242L10.5 9.5l-.96-.96 2.68-2.643A3.005 3.005 0 0 0 16 3c0-.269-.035-.53-.102-.777l-2.14 2.141L12 4l-.364-1.757L13.777.102a3 3 0 0 0-3.675 3.68L7.462 6.46 4.793 3.793a1 1 0 0 1-.293-.707v-.071a1 1 0 0 0-.419-.814L1 0Zm9.646 10.646a.5.5 0 0 1 .708 0l2.914 2.915a.5.5 0 0 1-.707.707l-2.915-2.914a.5.5 0 0 1 0-.708ZM3 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026L3 11Z"/>
</svg></p>
				<div align="center">		
			<h1 align="center"><i>AuToShOp</i></h1>
			<% 
			
			String s = (String)request.getAttribute("status"); 
			if(s == null){
			s = "Hello User! Please login to proceed";
			}
			else if(s.equals("error")){
				s = "User credentials are wrong...";
			}
			else{
				s = "Please try after sometime..";
			}
			%>
			<h1><%=s%></h1>
	</div>	
<div class="bg-img">

  <form action="login" class="container" method = "post">
    <h1>Login</h1>

    <label><b>UserId</b></label>
    <input type="text" placeholder="Enter Your Mobile Number" name="UserId" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

    <button type="submit" class="btn">Login</button>
<h5> New User ? <a href = "userregister.jsp">SignUp </a></h5>

  </form>
</div>

</body>
</html>
