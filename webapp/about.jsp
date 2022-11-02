 <%@ page import =  "com.spring.sboot1.entity.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>


  <style>
 .imgSize{ height : 100%;
	    width: 100%;
	    margin:auto;
			}

.card{ height : 95%;
	    width: 90%;
}

.card:hover{

    box-shadow: 0px 0px 0px 2px #pink;
    transform: scale(1.05);
}



.grainy-gradient-intro:before {
  background: #c3ccea;
  filter: url(#f);
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


.multiline {
  white-space: pre-wrap;
}



</style>




</head>
<div class= "container" id = "bgpd">
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
  <div class="container-fluid" >
    <a class="navbar-brand"  href="#">     <h3>Hello <%=u.getFirstName()+" "+u.getLastName()%> </h3>     </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar" style="justify-content:right">
      <ul class="navbar-nav">
        <li class="nav-item">
         <form action='dashboard' method='get'>
        		<input type="hidden" name='UserId' value='<%=u.getUserId() %>'>
        		<button type="submit" class="btn btn-link">Home</button>
        	</form>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">All parts</a>
          <ul class="dropdown-menu">
            <li> <form action='enginejsp' method='get'>
        		<input type="hidden" name='UserId' value='<%=u.getUserId() %>'>
        		<button type="submit" class="btn btn-link">engine parts</button>
        	</form></li>
     
            <li><form action='tyrejsp' method='get'>
        		<input type="hidden" name='UserId' value='<%=u.getUserId() %>'>
        		<button type="submit" class="btn btn-link">tyre</button>
        	</form></li>
            <li><form action='interiorjsp' method='get'>
        		<input type="hidden" name='UserId' value='<%=u.getUserId() %>'>
        		<button type="submit" class="btn btn-link">interior</button>
        	</form></li>
	    <li><form action='headlampjsp' method='get'>
        		<input type="hidden" name='UserId' value='<%=u.getUserId() %>'>
        		<button type="submit" class="btn btn-link">headlamps</button>
        	</form></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">signout</a>
        </li> 
      </ul>
    </div>
  </div>
</nav> 

<p align="left"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-tools" viewBox="0 0 16 16">
  <path d="M1 0 0 1l2.2 3.081a1 1 0 0 0 .815.419h.07a1 1 0 0 1 .708.293l2.675 2.675-2.617 2.654A3.003 3.003 0 0 0 0 13a3 3 0 1 0 5.878-.851l2.654-2.617.968.968-.305.914a1 1 0 0 0 .242 1.023l3.27 3.27a.997.997 0 0 0 1.414 0l1.586-1.586a.997.997 0 0 0 0-1.414l-3.27-3.27a1 1 0 0 0-1.023-.242L10.5 9.5l-.96-.96 2.68-2.643A3.005 3.005 0 0 0 16 3c0-.269-.035-.53-.102-.777l-2.14 2.141L12 4l-.364-1.757L13.777.102a3 3 0 0 0-3.675 3.68L7.462 6.46 4.793 3.793a1 1 0 0 1-.293-.707v-.071a1 1 0 0 0-.419-.814L1 0Zm9.646 10.646a.5.5 0 0 1 .708 0l2.914 2.915a.5.5 0 0 1-.707.707l-2.915-2.914a.5.5 0 0 1 0-.708ZM3 11l.471.242.529.026.287.445.445.287.026.529L5 13l-.242.471-.026.529-.445.287-.287.445-.529.026L3 15l-.471-.242L2 14.732l-.287-.445L1.268 14l-.026-.529L1 13l.242-.471.026-.529.445-.287.287-.445.529-.026L3 11Z"/>
</svg><h3>Autoshop</h3></p>

<br> 

<div> 
<div align= "left"><h3> We are Autoshop.....</h3>
<p> At autoshop,we sell online autoparts of cars all over the country.<br>
we are providing all type of parts of diffrent cars ,<br>
parts such as car tyres,wheels,car accessories,interior,<br>
exterior,head lamps tail lamps and fog lamps.

<pre> Autoshop Spares ensures complete durability and compatibility of its
 products, it has an upper hand over the automobile marketing industry. We
 have successfully established our name in the car spare parts market with 
 our loyalty and trustworthiness over customers. We provide genuine tested
 products at a reasonable price with a 24×7 customer support center. We 
 provide you with the best additional services and support for the maximum
 satisfaction of the customers. That’s why we are the leading online platform
 to buy car spares online at a compatible price. You should definitely go for
 the Autoshop Spares because:</pre>

<divs="multiline">
* Competitive and reasonable prices<br>
* 100% Genuine OEM/OES/Aftermarket products<br>
* Last-mile logistics solutions<br>
* Quality tested products along with brand awareness<br>
* Trustworthiness on each product purchase with 24×7 customer support<br>
* Pan-India sourcing.<br>
</div>
<br><br>
<div> <h2> Contact Us </h2>
<div>
		Email address :- autoshop@gmail.com<br>
		Phone No. :- 0719800000<br>
		Address :- b -plot sadar,Nagpur.441911.<br>
</div>
<br><br>
<div>

<h2>Frequently Asked Questions </h2><br>
<pre>
<h4><b>1.How can I find out if the product I've ordered is deliverable in my area?</b></h4>
<i> Ans. You won't have to worry about delivery since Autoshop Spares provides assured PAN-India delivery for all its products.However,
 to be double sure, you can check the availability by entering your PIN-Code number before adding the product to the cart.</i></pre>
<pre>
<h4><b>2.Will these spare parts come with a warranty?</b></h4>
 Ans.Yes! You will be eligible for a manufacturer warranty on the purchase of all thecar spare parts from Autoshop Spares.
  That’s a promise!</pre>
<pre>
<h4><b>3.What are the different types of spare parts available from Autoshop Spares for my car?</b></h4>
<i> Ans.Every single one! That's correct. GoMechanic Spares has everything you need for your car. You can easily browse through
 our comprehensive catalogue for the product you need or can simply search the part by its part number.</i></pre>
<pre>
<h4><b>4.How can Autoshop Spares guarantee OEM/OES quality at such a low cost?</b></h4>
 <i>Ans.GoMechanic Spares follow a Direct Product Procurement Policy. Under this, we purchase the spare parts directly from the
  manufacturers and store them at our in-house inventories. We are able to save a lot because of our self-owned inventories and
  logistics, and we offer exclusive benefits to our customers by providing spare parts at the best prices.</i></pre>
<pre>
<h4><b>5.Is it possible to follow the status of my order?</b></h4>
<i> Ans.Without a doubt. Simply go to the 'My Orders' area and use the GoMechanic Spares live tracking tool to see
 where your product is.</i></pre>
<pre>
<h4><b>6.What are the various modes of payment accepted here?</b></h4>
<i> Ans.For your order, you can easily pay via UPI (Google Pay, Paytm UPI, Amazon UPI, PhonePe), Credit/Debit Card, E-Wallets 
(PhonePe, Airtel Money, MobiKwik etc.) and COD (Cash On Delivery).</i></pre>
</div>

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