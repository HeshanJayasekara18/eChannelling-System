<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Boxicons -->
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
	<!-- My CSS -->
	<link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/Doctor.css">
    <title>Document</title>
</head>
<body>
    	<!-- SIDEBAR -->
	<section id="sidebar">
		<a href="#" class="toptitle">
			<i class='bx bxs-smile'></i>
			<span class="text">AdminHub</span>
		</a>
		<ul class="side-menu top">
			<li>
				<a href="adminhomepage.jsp">
                    
					<i class='bx bxs-dashboard' ></i>
					<span class="text">Dashboard</span>
				</a>
			</li>
			<li class="active">
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
	</section>
		<!-- NAVBAR -->

<!-- ---------------doctor form----------------------------------------- -->
	<div class="body">
    <div class="form-container">
        <h2>Add Doctor Details</h2>
        <form action="docinsert" method="post">
            <!-- First Name and Last Name -->
            <div class="form-row">
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" placeholder="Enter First Name" required>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" placeholder="Enter Last Name" required>
                </div>
            </div>
            
            <!-- Email and Phone -->
            <div class="form-row">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Enter Email" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" placeholder="Enter Phone Number" required>
                </div>
            </div>

            <!-- Birth Date -->
            <div class="form-group">
                <label for="birthDate">Birth Date</label>
                <input type="date" id="birthDate" name="dob"  required  >
            </div>

            <!-- Gender -->
            <div class="form-group">
                <label for="gender">Gender</label>
                <div class="radio-group">
                    <input type="radio" id="male" name="gender" value="male" checked>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label>
                    <input type="radio" id="other" name="gender" value="other">
                    <label for="other">Other</label>
                </div>
            </div>

            <!-- Specialization -->
            <div class="form-group">
                <label for="specialization">Specialization</label>
                <select id="specialization" name="specialization" required>
                    <option value="" disabled selected>Select Specialization</option>
                    <option value="Cardiology">Cardiology</option>
                    <option value="Dermatology">Dermatology</option>
                    <option value="Neurology">Neurology</option>
                    <option value="Orthopedics">Orthopedics</option>
                    <option value="Pediatrics">Pediatrics</option>
                </select>
            </div>

            <!-- Address -->
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" placeholder="Enter Address" required>
            </div>
            
			<!-- dicsription -->
            <div class="form-group">
                <label for="discription">discription</label>
                <input type="text" id="discription" name="description" placeholder="Enter discription" required>
            </div>
            
            <!-- Username and Password -->
            <div class="form-row">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="Enter Username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="Enter Password" required>
                </div>
            </div>
             <!-- Specialization -->
            <div class="form-group">
                <label for="avalability">Availability</label>
                <select id="specialization" name="avalability" required>
                    <option value="" disabled selected>Select Availability Status</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                    
                </select>
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <button type="submit" class="submit-btn">Register Doctor</button>
                
                
            </div>
            
        </form>
        <a href="doctorvaliditycheck.jsp">
				<button type="submit" class="submit-btn">Manage Doctor</button>
				
			</a>
    </div>
    </div>
    	



        <script src="js/navbar.js"></script>
</body>
</html>