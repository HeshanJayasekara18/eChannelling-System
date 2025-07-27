<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="css/Adminhome.css">
    <link rel="stylesheet" href="css/navbar.css">
    <style>
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap');
		
		.text-box {
    		background-color: lightblue;  /* Background color for the box */
    		padding: 40px 100px;  
    		margin: 100px 250px 100px 300px;           /* Space inside the box around the text */
    		border-radius: 50px;        /* Rounded corners for the box */
    		display: inline-block;      /* Shrinks the box to fit the content */
    		border: 2px solid #ccc;     /* Optional: Add a border */
		}

		.text-box h2 {
   			margin: 0;                 /* Ensures no extra margin around the text */
    		font-size: 80px;            /* Adjust font size */
    		color: #333;                /* Text color */
		}
		.ecare-logo{
			font-family: "Noto Sans", sans-serif;
			color:blue;
			text-align:center; 
			margin-top:150px;
			}
		.ecare-sub{
			font-family: "Noto Sans", sans-serif;
			color:gray;
			text-align:center;
			font-size:30px; 
			margin-top:5px;
		}
		
		}
	</style>
<title>Insert title here</title>
</head>
<body>
	
	
	<!-- SIDEBAR -->
     <section id="sidebar">
		<a href="#" class="toptitle">
			<i class='bx bxs-smile'></i>
			<span class="text">AdminHub</span>
		</a>
		<ul class="side-menu top">
			<li class="active">
				<a href="adminhomepage.jsp">
                    
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li>
				<a href="adddoctoraccount.jsp">

                    <i class='bx bx-user-plus'></i>
					<span class="text">Doctor</span>
				</a>
			</li>
			
			
			
		</ul>
		<ul class="side-menu">
			<li>
				<a href="myprofilelogin.jsp">
					<i class='bx bx-user'></i>
					<span class="text">My Profile</span>
				</a>
			</li>
			<li>
				<a href="adminlogin.jsp" class="logout">
					<i class='bx bxs-log-out-circle' ></i>
					<span class="text">Logout</span>
				</a>
			</li>
		</ul>
	</section>
	<!-- SIDEBAR -->

    	<!-- CONTENT -->
	<section id="content">
		<!-- NAVBAR -->
		<nav>
			<i class='bx bx-menu' ></i>
			<a href="#" class="nav-link">Appointment</a>
			<form action="#">
				<div class="form-input">
					<input type="search" placeholder="Search...">
					<button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
				</div>
			</form>
			<input type="checkbox" id="switch-mode" >
			<label for="switch-mode" class="switch-mode"></label>
			<a href="#" class="notification">
				<i class='bx bxs-bell' ></i>
				<span class="num">8</span>
			</a>
			<a href="#" class="profile">
				<img src="addimaghere.png">
			</a>
		</nav>
		<!-- NAVBAR -->


		<!-- MAIN -->
		<main>
			<div class="head-title">
				<div class="left">
					<h1>Dashboard</h1>
					<ul class="breadcrumb">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li><i class='bx bx-chevron-right' ></i></li>
						<li>
							<a class="active" href="#">Home</a>
						</li>
					</ul>
				</div>
				
				
			</div>

			<ul class="box-info">
				<li>
					<i class='bx bxs-calendar-check' ></i>
					<span class="text">
						<h3>50000</h3>
						<p>Total Appointment</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-group' ></i>
					<span class="text">
						<h3>20</h3>
						<p>Doctors</p>
					</span>
				</li>
				<li>
					<i class='bx bxs-dollar-circle' ></i>
					<span class="text">
						<h3>$54000</h3>
						<p>Total Sales</p>
					</span>
				</li>
			</ul>

		<div class="text-box">
   	
			<h2 class="ecare-logo" >E Care</h2>
			<h4 class="ecare-sub">Developers Unit</h4>
		
		</div>
	<script src="js/navbar.js"></script>
	
</body>
</html>