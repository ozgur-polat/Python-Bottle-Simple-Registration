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
			<div>
				<h2>Home Page</h2>
				<p>Welcome back, {{ loggedUser[0][2] }}!<br>
				You are authorized to perform operations below.</p>
				<i>{{msg}}</i>
			</div>
			<div>
				<table>
					<tr>
						<td><a href="addPersonnel">Add New Personnel</a></td>
					</tr>
					<tr>
						<td><a href="displayPersonnel">Display/Edit Personnel</a></td>
					</tr>
				</table>
			</div>


			% 	if(loggedUser[0][8]=="e"):
			%		execExist = 0
			%		adminExist = 0
			%		fieldExist = 0
			%		for i in topSalaries
			%			if(i[8]=="e"):
			%				execExist = 1
			%			if(i[8]=="a"):
			%				adminExist = 1
			%			if(i[8]=="f"):
			%				fieldExist = 1 
			

				<div>
					<p><b>Statistical Overview</b></p>
					<p>Top Paid Employees</p>
					<table>
						<tr>
							<th></th>
							<th>Name</th>
							<th>Surname</th>
							<th>Salary</th>
						</tr>
						%if (execExist==1)
							<tr>
								<td>Among Executives</td>
								<td>{{topSalaries[0][0]}}</td>
								<td>{{topAdministrative[0][0]}}</td>
								<td>{{topField[0][0]}}</td>
							</tr>
						% end
						%if (adminExist==1)
							<tr>
								<td>Among Administrative Personnel</td>
								<td>{{topExecutive[1]}}</td>
								<td>{{topAdministrative[1]}}</td>
								<td>{{topField[1]}}</td>
							</tr>
						% end
						%if (fieldExist==1)
							<tr>
								<td>Among Field Personnel</td>
								<td>{{topExecutive[0]}}</td>
								<td>{{topAdministrative[0]}}</td>
								<td>{{topField[0]}}</td>
							</tr>
						% end
					</table>
				</div>
			% end


		</div>
	</body>
</html>