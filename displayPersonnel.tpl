<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>HR Management System</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
		
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1>HR Management v1</h1>
                		<a href="home"><i class="fas fa-home"></i>Home</a>
				<a href="profile"><i class="fas fa-user-circle"></i>Profile</a>
				<a href="logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
			</div>
		</nav>
		<div class="content">
			<h2>Display Personnel</h2>
			<div>
    				<form action="/selectedPersonnel" method="post">
					  <div class="container">
					    <p>{{msg}}</p>
					    <p>Please enter email address of the personnel which you would like to display.</p>
					    <hr>


					    <label for="email"><b>E-mail</b></label>
					    <input type="text" name="email" id="email" required>

					    <hr>

					    <button type="submit">Display Personnel</button>
					  </div>

					</form>
				</div>
		</div>
	</body>
</html>