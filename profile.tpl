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
			<h2>Profile Page</h2>
			<div>
    				<p>Your account details are below:</p>
    				<table>

        				<tr>
            					<td>Employee ID:</td>
           					 <td>{{ account[0] }}</td>
       					 </tr>
        				<tr>
            					<td>Full Name:</td>
           					 <td>{{ account[1] }} {{ account[2] }}</td>
       					 </tr>
        				<tr>
            					<td>Email:</td>
            					<td>{{ account[3] }}</td>
        				</tr>
    					</table>
				</div>
		</div>
	</body>
</html>