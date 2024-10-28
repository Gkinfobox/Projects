<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Help</title>
<style>
		body
		{
			background-image: url(https://www.tamilnadutourism.tn.gov.in/img/pages/large-desktop/the-nilgiri-mountain-railway-1653904566_39d2e58ed7221faa8057.webp);
			background-repeat: no-repeat;
			background-size: cover;
			display: inline;
		}

		.nav
		{
			background-color: whitesmoke;
			opacity: 0.7;
			position: relative;
			overflow: hidden;
			bottom: 20px;
		}

		.nav a
		{
			float: left;
			width: 60px;
			height: 30px;
			padding: 20px 30px;
			text-align: center;
			color: black;
			font-size: 20px;
			text-decoration: none;

		}

		.nav a:hover
	{
		background-color: darkgray;
		color: black;
		border-bottom: 4px solid black;
	}

	.active
	{
		background-color: darkgray;
		font-weight: bolder;
		color: black;
		border-bottom: 4px solid black;
		
	}
	.nav a.split
	{
		float: right;
		position: relative;
		width: fit-content;
		right: 20px;
		text-align: center;
	}
	img
	{
		width:30px ;
		position: relative;
		top: 5px;
	}
	ul
	{
		list-style-type: none;
		padding: 10px;
	}

	li button
	{
		display: block;
		padding: 20px;
		width: 340px;
		font-weight: bolder;
		background-color: darkgray;
		border-radius: 20px;
		box-shadow: 4px 4px gray;
		position: relative;
		left: 20px;
		text-decoration: none;
		opacity: 0.8;

	}
	li button:hover
	{
		background-color: dimgray ;
	}
	li button a
	{
		text-decoration: none;
		color: black;
	}

	.box1
	{
		position: relative;
		left: 30px;
		width:1150px;
		height: 1000px;
		padding: 20px;
		background-color: whitesmoke;
		opacity: 0.7;
		font-weight: bolder;
		border: 6px double black;
		border-radius: 30px;
	}
	.box2
	{
		position: absolute;
		left: 130px;
		top: 200px;
		width: 1000px;
		height: 600px;
		font-size: 20px;
	}

	.foot
	{
		background-color: whitesmoke;
		opacity: 0.8;
		position: relative;
		overflow: hidden;
		top: 20px;
		height: 200px;
	}

	.foot a
	{
		text-decoration: none;
		color: black;
		font-weight: bolder;
		position: relative;
		left: 230px;
		bottom: 40px;
	}

	.foot h2
	{
		position: relative;
		left: 100px;
	}

	.popup
	{
		display: none;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;

	}

	.popup-content {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            width: 300px;
            text-align: center;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

    .popup-content p 
    {
    	text-align: left;
    }    
    .close-button1 {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 20px;
    }
    .close-button2 {
        background-color: red;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-top: 20px;
    }
	</style>
</head>

<header>
		<div class="nav">
		<a href="javascript:home()">Home</a>
		<a href="javascript:about()">About</a>
		<a class="active" href="javascript:help()">Help</a>

		<a class = "split" href="javascript:showPopup()">USERNAME   <img src="https://t4.ftcdn.net/jpg/05/09/59/75/360_F_509597532_RKUuYsERhODmkxkZd82pSHnFtDAtgbzJ.jpg"></a>

</div>

</header>
<body>

	<div class="box1">
		<h2><u>INSTRUCTIONS: </u></h2>
	</div>

	<div class="box2">

		<dl>
			<dt><b>HOME</b></dt>
			<dd>
				<dl>
					<dt>Booking Ticket: </dt>
						<dd>Click Book button.</dd><br>
					<dt>Cancel Ticket: </dt>
						<dd>Click the cancel button.</dd><br>
					<dt>Train detials: </dt>
						<dd>Click the train details button.</dd><br>
					<dt>Ticket details: </dt>
						<dd>Click the ticket details button.</dd><br>
				</dl>
			</dd>

			<dt><b>ABOUT: </b></dt>
			<dd>
				<dl>
					<dt>Details: </dt>
						<dd>In about page you can see the developer and application details.</dd><br>
				</dl>
			</dd>	

			<dt><b>USERNAME: </b></dt><br>
			<dd>
				<dl>
					<dt>Details: </dt><br>
						<dd> Step 1: Click the <q>USERNAME</q> button</dd><br>
						<dd> Step 2: You can see the user name and more details</dd><br>
						<dd> Step 3: If you want to exit -> Click <q>LOGOUT</q> button</dd><br>
						<dd> Step 4: Click the <q>CLOSE</q> button to continue the process</dd><br>
				</dl>
			</dd>	
			
	</dl>
	</div>

	<div id="myPopup" class="popup">
    <div class="popup-content">
        <h2 style="text-align: center;">User Information</h2>
        <p>User Name: </p><br>
        <p>Mobile No: </p><br>
        <p>Gmail ID: </p><br>

        <button class="close-button2"onclick="logout()">Logout</button>
        <button class="close-button1" onclick="closePopup()">Close</button>
    </div>
</div>

	<script>
		function home()
		{
			window.location.replace("home.jsp");
		}
		function about()
		{
			window.location.replace("about.jsp");
		}
		function help()
		{
			window.location.replace("help.jsp");
		}
		function showPopup() {
        document.getElementById("myPopup").style.display = "flex";
    }

    // Function to close the popup
    function closePopup() {
        document.getElementById("myPopup").style.display = "none";
    }

    function logout()
    {
    	window.location.replace("login.jsp");
    }
	</script>

</body>

<footer>
	<div class="foot">
		<h2>Contact us: </h2>
		<ul>
			<li><a href="http://Facebook.com">
				<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU01si6zI1HG0in645OhQLW6VIyolCO-1pIg&s">  Facebook</a></li><br>

			<li><a href="http://instagram.com">
				<img src="https://www.pngall.com/wp-content/uploads/13/Insta-Logo.png">  Instagram</a></li><br>

			<li><a href="http://youtube.com">
			  	<img src="https://static.vecteezy.com/system/resources/thumbnails/023/986/704/small/youtube-logo-youtube-logo-transparent-youtube-icon-transparent-free-free-png.png">	Youtube</a></li><br>
		</ul>
	</div>
</footer>
</html>