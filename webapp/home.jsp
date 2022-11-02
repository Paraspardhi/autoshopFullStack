<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



</head>
<div class= "bgbody" id = "bgpd">
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><h1><i>AuToShOp<i></h1></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Car Type <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Suv</a></li>
          <li><a href="#">Sedan</a></li>
          <li><a href="#">Hathback</a></li>
	  <li><a href="#">Transport</a></li>
        </ul>
      </li>
      <li><a href="about.jsp">About</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="userregister.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">

</div>





<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image\tharauto6.jpeg" style="width:30%" class="d-block w-100" alt="...">
 <div class="carousel-caption d-none d-md-block">
        <h3>HEADLAMPS</h3>
       
      </div>
    </div>
    <div class="carousel-item">
      <img src="image\tharauto4.jpg" style="width:30%" class="d-block w-100" alt="...">
 <div class="carousel-caption d-none d-md-block">
        <h3>ALL INTERIOR</h3>
       
      </div>
    </div>
    <div class="carousel-item">
      <img src="image\tharauto5.jpeg" style="width:30%" class="d-block w-100" alt="...">
 <div class="carousel-caption d-none d-md-block">
        <h3>WHEELS</h3>
   
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<br>
<div>
<p>
<h2><b> All AutoParts Are Availalbe Here....</b></h2></p><br><br>
<img src="image\auto4.jpg" alt="traveling pic"  width="1300" height="300">

</div>

	</body>
</html>

