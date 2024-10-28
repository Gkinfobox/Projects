<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>About</title>
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
		height: 500px;
		padding: 20px;
		background-color: whitesmoke;
		opacity: 0.7;
		border: 6px double black;
		border-radius: 30px;
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

    .box2
    {
    	position: absolute;
    	top: 200px;
    	left: 140px;
    	width: 1000px;
    	height: 400px;
    	font-size: 25px;
    	border: 2px solid black;
    	border-radius: 20px;
    	background-color: whitesmoke;
    	opacity: 0.5;
    	font-weight: bolder;
    }
	</style>
</head>

<header>
		<div class="nav">
		<a href="javascript:home()">Home</a>
		<a class="active" href="javascript:about()">About</a>
		<a href="javascript:help()">Help</a>
		<a class = "split" href="javascript:showPopup()">USERNAME   <img src="https://t4.ftcdn.net/jpg/05/09/59/75/360_F_509597532_RKUuYsERhODmkxkZd82pSHnFtDAtgbzJ.jpg"></a>
	</div>
</header>

<body>

	<div class="box1">
		<h2>ABOUT US...!</h2>
	</div>

	<div class="box2">

		<marquee direction="up" scrolldelay=200>
			<p>Hello guys, First of all thank you for choose our application.I'm GK, The one who developed this application. It's my long time dream to build web application like this one.  </p>

			<p>We really appreciate for support us. The world is a book and those who do not <q><u>travel</u></q> read only one page. So, Don't waste your life book. read and write every pages of it by making travel memories...</p>

			<p>Book a ticket using our application and travel around.</p>

			<center>Thank you...!</center>
		</marquee>
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
		function showPopup() 
		{
        document.getElementById("myPopup").style.display = "flex";
    	}
	    function closePopup() 
	    {
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