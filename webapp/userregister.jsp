<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	background-image: url("C:/Users/ES/Desktop/u_n_me_bgpic.webp");
}

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

#hp {
	float: right;
	margin: 0 0 0 30px;
}

.container {
	max-width: 300px;
}
</style>
</head>
<body>



	<div>
		<img src="image\auto2.jpg" alt="traveling pic" id="hp" width="800" height="600">
		<div align="left">

			<h2>Register To Autoshop</h2>
			<form action="userregister">
				<label for="userid">Mobile No:</label><br> 
				<input type="text" id="userid" name="UserId" placeholder="Mobile No">
				<br> 
				<label for="fname">First name:</label><br> 
				<input type="text" id="fname" name="FirstName" placeholder="Your first name.."><br>
				<label for="lname">Last name:</label><br> 
				<input type="text" id="lname" name="LastName" placeholder="Your last name.."><br>
				<label for="dot">Date of birth:</label><br> 
				<input type="date" id="dt" name="DOB" placeholder="Date of birth.."><br><br> 
				<label for="pswd">EmailId:</label><br> 
				<input type="text" id="uname" name="EmailId" placeholder="EmailId"><br>
				<label for="pswd">MblNo:</label><br> 
				<input type="text" id="uname" name="MblNo" placeholder="MblNo"><br> 
				<label for="pswd">Password:</label><br> 
				<input type="text" id="pswd" name="Password" placeholder="set password"><br> 
				<label for="rpswd">Address:</label><br> 
				<input type="text" id="rpswd" name="Adress" placeholder="Address "><br> 
				<input type="submit" id="rpswd" name="submit"><br>
				<h3>
					Already have an account ? <a href="login.jsp">login</a>
				</h3>

			</form>
		</div>
	</div>

</body>
</html>