<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>

	<style>
	body
	{
		background-image:url("https://www.tamilnadutourism.tn.gov.in/img/pages/large-desktop/the-nilgiri-mountain-railway-1653904566_39d2e58ed7221faa8057.webp");
		background-repeat: no-repeat;
		background-size: 120%;
		display: inline ;
	}

	.nav
	{
		background-color: white;
		opacity: 0.7;
		overflow: hidden;
		bottom: 20px;
		position: relative;

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
		background-color: whitesmoke;
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
		cursor: pointer;
	}
	li button a
	{
		text-decoration: none;
		color: black;
	}

	.box1
	{
		float: right;
		position: relative;
		top: 40px;
		right: 100px;
		width: 400px;
		height: 420px;
		background-color: rgba(232, 236, 241, 0.7);
		align-items: center;
		

	}

	.box2
	{
		float: left;
		position: relative;
		top: 40px;
		left: 50px;
		width: 500px;
		height: 320px;
		padding: 50px;
		background-color: rgba(232, 236, 241, 0.7);
		align-items: center;
	}
	.content
	{
		position: relative;
		bottom: 70px;
		width: 400px;
		height: 250px;
		border: 2px double black;
		border-radius: 20px;
		padding: 40px;
		font-weight: bolder;
		font-size: 25px;
		font-family: "papyrus";
		text-align: left;
		text-shadow: 2px 2px gray;
	}
	h3
	{
		position: relative;
		bottom: 60px;
		font-size: 20px;
		text-shadow: 2px 2px gray;
		font-family: cursive;
	}
	.popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            width: 300px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            z-index: 100;
        }

        /* Overlay */
        .overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            z-index: 99;
        }

        /* Popup content */
        .popup-content p {
            margin: 10px 0;
        }

        /* Close button */
        .close-button1, .close-button2 {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            margin-top: 15px;
            border-radius: 5px;
            width: 100%;
        }

        /* Logout button style */
        .close-button2 {
            background-color: #4CAF50; /* Green */
        }

        /* Hover effects */
        .close-button1:hover {
            background-color: #e53935;
        }

        .close-button2:hover {
            background-color: #45a049;
        }

</style>
<header>
	<div class="nav">
		<a class="active" href="javascript:home()">Home</a>
		<a href="javascript:about()">About</a>
		<a href="javascript:help()">Help</a>
		<a class = "split" href="javascript:showPopup()">USERNAME   <img src="https://t4.ftcdn.net/jpg/05/09/59/75/360_F_509597532_RKUuYsERhODmkxkZd82pSHnFtDAtgbzJ.jpg"></a>
	</div>	
</header>
</head>



<body>
	<div class="box1">
		<ul><br>
		<li><button onclick="book()">BOOK TICKET</button></li><br><br>
		<li><button onclick="cancel()">CANCEL TICKET</button></li><br><br>
		<li><button onclick="view()">VIEW TICKET DETAILS</button></li><br><br>
		<li><button onclick="ticket()">LOGOUT</button></li><br><br>
		</ul>
	</div>

	<div class="box2">
		<h3>WELCOME...</h3>
		<div class="content"> 
			<q>The world is a book and those who do not <q><u>travel</u></q> read only one page</q><br><br>
			<q>Sometimes the wrong <q><u>train</u></q> take us to right places</q>
			<p>- Book a ticket and travel around...</p>
		</div>		
	</div>
	
	<div id="myPopup" class="popup">
	    <div class="popup-content">
	        <h2 style="text-align: center;">User Information</h2>
	        <p><b>User Name:</b> <%= session.getAttribute("userName") %></p>
   			<p><b>Mobile Number:</b> <%= session.getAttribute("mobileNumber") %></p>
    		<p><b>Email: </b><%= session.getAttribute("email") %></p>
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
		function book() {
			window.location.href="bookTicket.jsp";
		}
		function cancel()
		{
			window.location.href = "entertcno.jsp";
		}
		function view()
		{
			window.location.href= "enterTicketNumber.jsp";
		}
		function ticket()
		{
			var con = confirm("Are you sure ?");
			if(con == true)
				{
					window.location.href ="login.jsp";
				}
			else
				{
				window.location.href ="home.jsp";
				}
			
		}

		function showPopup() {
	       
	        document.getElementById('myPopup').style.display = 'block';
	        document.getElementById('overlay').style.display = 'block';
	    }

	    function closePopup() {
	        
	        document.getElementById('myPopup').style.display = 'none';
	        document.getElementById('overlay').style.display = 'none';
	    }

	    function logout() {
	 
	        alert("You have been logged out.");
	        window.location.href = "login.jsp";
	        closePopup(); 
	        
	         
	    }
	</script>


</body>
</html>