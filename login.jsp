<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login page</title>
	<style>
		.bg
		{
			background-image: url("https://i.gifer.com/TnNs.gif");			
			background-repeat: no-repeat;
			background-size: 101%;
			
		}
		
		.a
		{
			
			position: fixed;
			top: 100px;
			left: 700px;
			padding: 100px;
			width: 300px;
			height: 200px;			
		}
		input
		{
			right: 50px;
			padding: 10px;
			opacity: 0.7;
		}
		input:hover
		{
			background-color: lightgray;
		}

		.btn
		{
			position: relative;
			left: 35px;
			background-color: white;
			padding: 10px;
			border-radius: 5px;
			width: 100px;
			cursor: pointer;
			opacity: 0.4;
			box-shadow: 2px 2px black;
			transition: transform .5s;
		}
		.btn:hover
		{
			background-color: lightgray;
			transform: scale(0.8);
		}
		p
		{
			position: relative;
			display: inline-block;
			top: 220px;
			left: 400px;
			width: 300px;
			height: 30px;
			text-align: center;
			font-size: 20px;
			border-radius: 20px;
		}
		h1
		{
			text-align: center;
			position: relative;
			top: 20px;
			text-shadow: 2px 2px gray;
		}
	</style>
</head>
<body class="bg">

	<h1>TICKET BOOKING</h2>

		<p id="message"></p>
	

	<form action="loginservlet" id="loginf" class="a" method="post">
		<h2 style="text-shadow: 2px 2px grey;">LOGIN </h2>		

		<input type="text" name="uname" id="uname" placeholder="Username" size="50px"><br><br>
		<input type="password" name="pass" id="pwd" placeholder="Password" size="50px"><br><br>

		<center>
		<button type="submit" class="btn">Login</button><br><br>
	
		<label>Don't have an account?  <a href="useraccount.jsp"> Create new</a> </label>

		
		</center>

	</form>
	
</body>
</html>

<!--  

	<script>

		const form = document.getElementById('loginf');
		const usernameInput = document.getElementById('uname');
		const passwordInput = document.getElementById('pwd');
		const message = document.getElementById('message');

		form.addEventListener('submit', (event) => {
		  event.preventDefault();

		  const username = usernameInput.value;
		  const password = passwordInput.value;

		  if (username === 'ganesh' && password === '12345') 
		  {

		      	message.style.backgroundColor = 'lightgreen';
		  		message.textContent = 'Login successfully';
		

		  	setTimeout(function () {
		    window.location.replace("file:///C:/Users/Administrator/Desktop/Project/Train_Ticket_Booking/Home.html"); 
		    },1000);
		    
		    }

		    else if (username === '' || password === '') 
		    {
			    	message.style.backgroundColor = 'yellow';
			  		message.textContent = 'Enter username and password';
		    }

		   else {
		  	 	message.style.backgroundColor = 'red';
		    message.textContent = 'Invalid username or password.';
		}
		});


		

	</script>
-->

