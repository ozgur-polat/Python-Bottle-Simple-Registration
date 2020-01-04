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
			% execExist = 0
			% adminExist = 0
			% fieldExist = 0
			% if(loggedUser[0][8]=="e"):
			%	for i in topSalaries:
			%		if(i[2]=="e"):
			%			execExist=1
			%		end
			%		if(i[2]=="a"):
			%			adminExist=1
			%		end
			%		if(i[2]=="f"):
			%			fieldExist=1 
			%		end
			% 	end
			% end
			
			% if(loggedUser[0][8]=="e"):
				<div>
					<p><b>Statistical Overview</b></p>
					<p>Top Paid Employees</p>
					<table border="1">
						<tr>
							<th></th>
							<th>Name</th>
							<th>Surname</th>
							<th>Salary</th>
						</tr>
						%if(execExist==1):
							<tr>
								<td>Among Executives</td>
								<td>{{topSalaries[1][0]}}</td>
								<td>{{topSalaries[1][1]}}</td>
								<td>{{topSalaries[1][3]}}</td>
							</tr>
						%end
						%if(adminExist==1):
							<tr>
								<td>Among Administrative Personnel</td>
								<td>{{topSalaries[0][0]}}</td>
								<td>{{topSalaries[0][1]}}</td>
								<td>{{topSalaries[0][3]}}</td>
							</tr>
						%end
						%if(fieldExist==1):
							<tr>
								<td>Among Field Personnel</td>
								<td>{{topSalaries[2][0]}}</td>
								<td>{{topSalaries[2][1]}}</td>
								<td>{{topSalaries[2][3]}}</td>
							</tr>
						%end
					</table>
				</div>
			% end


		</div>
	</body>
</html>