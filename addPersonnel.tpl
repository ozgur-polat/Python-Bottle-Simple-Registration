<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>HR Management System</title>
		<link rel="stylesheet" href="style.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
		<script src="jquery-latest.min.js"></script>
		<script type="text/javascript">

			
			document.addEventListener("DOMContentLoaded", function(event) {
			    document.getElementById('administrative').style.display = 'none';
			    document.getElementById('executive').style.display = 'none';
			    document.getElementById('field').style.display = 'none';

				document.getElementById('personnelType').onchange = function() {
					if(this.options[this.selectedIndex].value == "a"){
						document.getElementById('administrative').style.display = 'block';
			    		document.getElementById('executive').style.display = 'none';
			    		document.getElementById('field').style.display = 'none';
					}
					if(this.options[this.selectedIndex].value == "e"){
						document.getElementById('administrative').style.display = 'none';
			    		document.getElementById('executive').style.display = 'block';
			    		document.getElementById('field').style.display = 'none';
					}
					if(this.options[this.selectedIndex].value == "f"){
						document.getElementById('administrative').style.display = 'none';
			    		document.getElementById('executive').style.display = 'none';
			    		document.getElementById('field').style.display = 'block';
					}
				}

				

			});
			
	


			
		</script>
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
			<h2>Add New Personnel</h2>
			<div>
    				<form action="/addPersonnelPost" method="post">
					  <div class="container">
					    <h1>Add Personnel</h1>
					    <p>{{msg}}</p>
					    <p>Please fill the details of new personnel.</p>
					    <hr>



					    <label for="name"><b>Name</b></label>
					    <input type="text" name="name" id="name" required>
					    <br>

					    <label for="surname"><b>Surname</b></label>
					    <input type="text" name="surname" id="surname" required>
					    <br>

					    <label for="email"><b>E-mail</b></label>
					    <input type="text" name="email" id="email" required>
					    <br>

					    <label for="zipCode"><b>Zip Code</b></label>
						<select id = "zipCode" name="zipCode">
							% for item in zipList:
								<option value = "{{item[0]}}">{{item[0]}}</option>
							% end
			            </select>
			            <br>

			            <label for="salary"><b>Salary</b></label>
				    	<input type="number" name="salary" id="salary">
			            <br>

			            <label for="jobStartDate"><b>Job Start Date</b></label>
			            <input type="date" name="jobStartDate" id="jobStartDate">
			            <br>

					    <label for="password"><b>Password</b></label>
					    <input type="password" name="password" id="password" required>
					    <br>


					    <label for="personnelType"><b>Personnel Type</b></label>
					    <select id = "personnelType" name = "personnelType" required>
					    	<option disabled selected value>Please select</option>
			               	<option value = "a">Administrative</option>
			               	<option value = "e">Executive</option>
			               	<option value = "f">Field</option>
			            </select>
			            <br>


		            	<div id="administrative">
		            		<label for="expense"><b>Expense Limit (in PLN)</b></label>
					    	<input type="number" name="expense" id="expense">
					    	<br>

					    	<label for="privateHealthInsurance"><b>Private Health Insurance</b></label>
					    	<select id = "privateHealthInsurance" name = "privateHealthInsurance">
				               <option value = "0">No</option>
				               <option value = "1">Yes</option>
				            </select>

		            	</div>
		            	



		            	<div id="executive">
		            		<label for="premiumRatio"><b>Premium Ratio (Between 1-100)</b></label>
		            		<input type="number" name="premiumRatio" id="premiumRatio" min="1" max="100">

		            	</div>
		            	



		            	<div id="field">
		            		<label for="yearlyBonus"><b>Yearly Bonus (in PLN)</b></label>
					    	<input type="number" name="yearlyBonus" id="yearlyBonus">
					    	<br>

					    	<label for="shiftType"><b>Shift Type</b></label>
					    	<select id = "shiftType" name = "shiftType">
				               <option value = "0">Day</option>
				               <option value = "1">Night</option>
				            </select>

		            	</div>





					    <hr>

					    <button type="submit" class="registerbtn">Add Personnel</button>
					  </div>

					</form>
				</div>
		</div>
	</body>
</html>