<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import =  "com.spring.sboot1.entity.User"%>
     <%@ page import =  "com.spring.sboot1.entity.Product"%>
     <%@ page import =  "java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
	
	<style>
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
<%
	User u = (User)request.getAttribute("user");
	%>
<section class="grainy-gradient-intro">
  <svg height="0" width="0">
    <filter id='f'>
      <feTurbulence type='fractalNoise' baseFrequency='.5' />
    </filter>
  </svg>
 
</section>
<nav class="navbar navbar-expand-sm  ">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"> <h3>Hello <%=u.getFirstName()+" "+u.getLastName()%> </h3>  </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar"style="justify-content:right">
      <ul class="navbar-nav">
       <li class="nav-item">
        	<form action='dashboard' method='get'>
        		<input type="hidden" name='UserId' value='<%=u.getUserId() %>'>
        		<button type="submit" class="btn btn-link">Home</button>
        	</form>
         <!--  <a class="nav-link active" aria-current="page" href="Dashboard.jsp">Home</a> -->
          
          
        </li>
         <li class="nav-item">
          <a class="nav-link" href="login.jsp">signout</a>
        </li> 
      </ul>
    </div>
  </div>
</nav>
		   
	  
		   <p align="center"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-tools" viewBox="0 0 16 16">
  <path d="M1 0 0 1l2.2 3.081a1 1 0 0 0 .815.419h.07a1 1 0 0 1 .708.293l2.675 2.675-2.617 2.654A3.003 3.003 0 0 0 0 13a3 3 0 1 0 5.878-.851l2.654-2.617.968.968-.305.914a1 1 0 0 0 .242 1.023l3.27 3.27a.997.997 0 0 0 1.414 0l1.586-1.586a.997.997 0 0 0 0-1.414l-3.27-3.27a1 1 0 0 0-1.023-.242L10.5 9.5l-.96-.96 2.68-2.643A3.005 3.005 0 0 0 16 3c0-.269-.035-.53-.102-.777l-2.14 2.141L12 4l-.364-1.757L13.777.102a3 3 0 0 0-3.675 3.68L7.462 6.46 4.793 3.793a1 1 0 0 1-.293-.707v-.071a1 1 0 0 0-.419-.814L1 0Zm9.646 10.646a.5.5 0 0 1 .708 0l2.914 2.915a.5.5 0 0 1-.707.707l-2.915-2.914a.5.5 0 0 1 0-.708ZM3 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026L3 11Z"/>
</svg></p>
							
			<h1 align="center"><i>AuToShOp</h1>

</div>	<br><br>   
<%
	List<Product> plist = (List<Product>)request.getAttribute("list");
	for(Product p : plist){
		out.println("<img src='image/"+p.getPimg()+"' alt='"+p.getPname()+"'height='300px' width='300px' >");
		out.println("<dl><dt>"+p.getPid()+"</dt><dt>"+p.getPname().toUpperCase()+"</dt><dt>"+p.getPtype().toUpperCase()+"</dt><dt>"+p.getPcost()+"</dt><dt>"+p.getPquantity()+"</dt></dl>");
		
		out.println("<form action='purchaseProduct' method='post'>");
		
		out.println("<input type='hidden' name='pid' value='"+p.getPid()+"'>");
		out.println("<input type='hidden' name='UserId' value='"+u.getUserId()+"'>");
		out.println("Quantity<input type='text' name='quantity' value='1'>");
		out.println("<input type='submit' class='btn btn-success' value='Buy Now'>");
		out.println("</form>");
		out.println("<form action='addToCart' method='post'>");
		out.println("<input type='hidden' name='pid' value='"+p.getPid()+"'>");
		out.println("<input type='hidden' name='UserId' value='"+u.getUserId()+"'>");
		out.println("<input type='submit' class='btn btn-success' value='Add to cart'>");
		out.println("</form>");
		
	}
%>

<!-- Footer -->
<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4">
   

   
    <!-- Section: Form -->

    <!-- Section: Text -->
    <section class="mb-4">
      <p>
       <h1 align ="center">Autoshop</h1>
      </p>
    </section>
    <!-- Section: Text -->

    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
       

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Learn More</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="about.jsp" class="text-white">Company</a>
            </li>
            <li>
              <a href="clients.jsp" class="text-white">Clients</a>
            </li>
            <li>
              <a href="https://auto.economictimes.indiatimes.com/tag/auto+parts" class="text-white">News</a>
            </li>
           
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">About</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="about.jsp" class="text-white">FAQ</a>
            </li>
            <li>
              <a href="about.jsp" class="text-white">Our Board</a>
            </li>
            <li>
              <a href="about.jsp" class="text-white">Our Staff</a>
            </li>
            <li>
              <a href="about.jsp" class="text-white">Contact Us</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Parts</h5>

 
  
      <ul class="list-unstyled mb-0">
            <li>
              <a href="interior.jsp" class="text-white">Interior</a>
            </li>
            <li>
              <a href="headlamp.jsp" class="text-white">Lights</a>
            </li>
            <li>
              <a href="engine.jsp" class="text-white">Engine Parts</a>
            </li>
            <li>
              <a href="tyre.jsp" class="text-white">Wheels</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
  <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Parts</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="interior.jsp" class="text-white">Accessories</a>
            </li>
            <li>
              <a href="interior.jsp" class="text-white">car body</a>
            </li>
            <li>
              <a href="interior.jsp" class="text-white">oil & fuel</a>
            </li>
            <li>
              <a href="interior.jsp" class="text-white">Electrical</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
   Website developed by Paras R. Pardhi
    
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->


</body>
</html>