<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Account creation</title>
	<style>
		.bg
		{
			background-image: url(https://miro.medium.com/v2/resize:fit:1400/1*APtZTwWPLoz5A__ALdJeSw.jpeg);
			background-repeat: no-repeat;
			background-size: cover;
		}
		.box
		{
			position: relative;
			top: 30px;
			left: 20px;
			width: 1200px;
			height: 500px;
			bottom: 30px;
			background-color: lightgray;
			opacity: 0.7;	
			border: 2px solid black;
		}
		input
		{
			opacity: 0.7;
			padding: 10px;
			border-radius: 10px;
		}
		input:hover
		{
			background-color: lightgray;
		}
		.f
		{
			position: relative;
			margin: 50px;
			color: black;
			font-weight: bolder;
			color: darkblack;
		}

		.f h2
		{
			position: relative;
			left: 400px;
			border: 2px double;
			border-radius: 20px;
			background-color: whitesmoke;
			width: 250px;
			height: 30px;
			align-content: center;
		}
		.btn1
		{
			border-radius: 10px;
			position: relative;			
			width: 120px;
			height: 40px;
			opacity: 0.7;
			box-shadow: 2px 2px black;
			font-weight: bolder;
		}
		.btn1:hover
		{
			background-color: lightgray;
		}
		mark
		{
			background-color: lightgray;
			color: black;
			opacity: 0.5;
		}
		  .error {
            color: #e74c3c;
            font-size: 14px;
        }

        .col1
        {
        	position: absolute;
        	top: 70px;
        	left: 60px;
        }

        .col2
        {
        	position: absolute;
        	left: 600px;
        	top: 70px;
        }

	</style>
</head>
<body class="bg">

	<div class="box">
		
		<form  class="f"  action="Account" method="post" onsubmit="return valid()">
			
			<h2 style="text-align: center;">USER ACCOUNT</h2>

	<div class="col1">	
		<label>Name : </label> <br> <input type="text" name="username" id="fname" size="50"> <br><br>
		<span id="usernameError" class="error"></span><br>
	
		<label>Gender: </label> <input type="radio" id="Male" name="Gender" value="Male"> <label for="Male">Male</label>
								<input type="radio" id="Female" name="Gender" value="Female"> <label for="Female">Female</label>
								<input type="radio" id="Others" name="Gender" value="Others"> <label for="Others">Others</label>
								<br><br>
		<span id="genderError" class="error"></span><br><br>
	
		<label>Mobile No:</label><br> <input type="text" name="mno" id="mobno" size="50"><br><br>
		<span id="mobileError" class="error"></span><br><br>

		<label>Email ID: </label><br> <input type="text" name="mail" id="email" size="50"><br><br>
		<span id="emailError" class="error"></span>
	</div>

	<div class="col2">

		<label>Create Username :</label> <br> <input type="text" name="loginname" id="logname" size="50"> <br><br>
		<span id="loginnameError" class="error"></span><br>
		<label>Create Password :</label> <br> <input type="Password" name="Pass" id="pass" size="50"><br><br>
		<span id="passwordError" class="error"></span><br>
		<label>Re-Enter Password : </label> <br> <input type="Password" name="repass" id="repass" size="50"><br><br>
		<span id="repasswordError" class="error"></span><br>
		<input type="checkbox" name="check" id="checkpass" size="50" onclick="view()">Show password
		<br>
		<br>
		<center>
		<button type="submit" class="btn1"> Create</button>
		</center>
	</div>

	</form>
</div>

	<script>
		function valid()
		{
			let isValid = true;

			document.getElementById("usernameError").textContent = "";
        	document.getElementById("mobileError").textContent = "";
        	document.getElementById("emailError").textContent = "";
        	document.getElementById("genderError").textContent = "";
        	document.getElementById("loginnameError").textContent = "";
        	document.getElementById("passwordError").textContent = "";
        	document.getElementById("repasswordError").textContent = "";

        	const username = document.getElementById("fname").value;
        	if (username === "") 
        	{
            	document.getElementById("usernameError").textContent = "Name is required.";
            	isValid = false;
      		}

      		const loginname = document.getElementById("logname").value;

	        if (loginname === "") 
        	{
            	document.getElementById("loginnameError").textContent = "Username is required.";
            	isValid = false;
      		}



	        // Validate mobile number
	        const mobileNo = document.getElementById("mobno").value;
	        const mobilePattern = /^[0-9]{10}$/;
	        if (!mobilePattern.test(mobileNo)) 
	        {
	            document.getElementById("mobileError").textContent = "Enter a valid 10-digit mobile number.";
	            isValid = false;
	        }

	        // Validate email
	        const email = document.getElementById("email").value;
	        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	        if (!emailPattern.test(email)) {
	            document.getElementById("emailError").textContent = "Enter a valid email address.";
	            isValid = false;
	        }

	        // Validate gender
	        const gender = document.querySelector('input[name="Gender"]:checked');
	        if (!gender) {
	            document.getElementById("genderError").textContent = "Select your gender.";
	            isValid = false;
	        }

	        const pwd = document.getElementById('pass').value;

	        if(pwd === '')
	        {
	        	document.getElementById("passwordError").textContent = "Enter password";
	        	isValid = false;
	        }

	        const repwd = document.getElementById('repass').value;
	        if(repwd === '')
	        {
	        	document.getElementById("repasswordError").textContent = "Re Enter password";
	        	isValid = false;
	        }

	        if(pwd !== repwd)
	        {
	        	document.getElementById("repasswordError").textContent = "Password is not same";
	        	isValid = false;
	        }

	        	return isValid;
		
	 
        }

        function view()
        {

	        var passwordField = document.getElementById("pass");
        	var repasswordField = document.getElementById("repass");

        	if (passwordField.type === "password") 
        	{
            	passwordField.type = "text";
            	repasswordField.type = "text";
        	}
        	else 
        	{
            	passwordField.type = "password";
            	repasswordField.type = "password";
        	}
        }
	
	</script>



</body>
</html>