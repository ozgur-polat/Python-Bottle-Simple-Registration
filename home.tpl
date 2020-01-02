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
			<h2>Home Page</h2>
			<p>Welcome back, {{ name }}!<br>
			You are authorized to perform operations below.</p>
			<div>
				<table>
					<tr>
						<td><a href="addPersonnel">Add New Personnel</a></td>
					</tr>
					<tr>
						<td><a href="#">Menu Item 2</a></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>