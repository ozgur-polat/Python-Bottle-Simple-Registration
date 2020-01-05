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
				document.getElementById('editInfo').style.display = 'none';
				document.getElementById('editInfoBtn').onclick = function() {
					document.getElementById('editInfo').style.display = 'block';
					document.getElementById('initialInfo').style.display = 'none';
				}
				document.getElementById('canceEditInfoBtn').onclik = function() {
					document.getElementById('editInfo').style.display = 'none';
					document.getElementById('initialInfo').style.display = 'block';
				}




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
			<h2>Selected Personnel</h2>
			<div>
    				
				  	<div class="container">
					    <i>{{msg}}</i>
					    <p>You can find the information about selected personnel and history of change in rank and salary below it. <br>
					    	You can edit the information by hitting 'Edit' button then 'Save' or click 'Cancel' to return.
					    </p>
					    <hr>

					    <div id="initialInfo">
					    	<table>
					    		<tr>
					    			<td>Personnel ID</td>
					    			<td>{{selectedPersonnel[0]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Name</td>
					    			<td>{{selectedPersonnel[1]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Surname</td>
					    			<td>{{selectedPersonnel[2]}}</td>
					    		</tr>
					    		<tr>
					    			<td>E-mail</td>
					    			<td>{{selectedPersonnel[3]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Zip Code</td>
					    			<td>{{selectedPersonnel[4]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Street</td>
					    			<td>{{selectedPersonnelAddress[1]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Building</td>
					    			<td>{{selectedPersonnelAddress[2]}}</td>
					    		</tr>
					    		<tr>
					    			<td>City</td>
					    			<td>{{selectedPersonnelAddress[3]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Salary</td>
					    			<td>{{selectedPersonnel[5]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Job Start Date</td>
					    			<td>{{selectedPersonnel[6]}}</td>
					    		</tr>
					    		<tr>
					    			<td>Personnel Type</td>
					    			<td>
					    				%if(selectedPersonnel[8]=="a"):
					    					Administrative
					    				%elif(selectedPersonnel[8]=="e"):
					    					Executive
					    				%elif(selectedPersonnel[8]=="f"):
					    					Field
					    				%else:
					    					Unknown
					    				%end
					    			</td>
					    		</tr>
					    	<table>
						    <button id="editInfoBtn">Edit Information</button>
					  	</div>





					    <div id="editInfo">
					    	<button id="canceEditInfoBtn">Cancel</button>
						    <form action="/addPersonnelPost" method="post">
						    	<label for="name"><b>Personnel ID</b></label>
							    <input type="text" name="name" id="pid" value="{{selectedPersonnel[0]}}" disabled>
							    <br>

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

							    <label for="rank"><b>Rank</b></label>
							    <select id="rank" name="rank">
							    	<option value="1">Rank 1</option>
							    	<option value="2">Rank 2</option>
							    	<option value="3">Rank 3</option>
							    	<option value="4">Rank 4</option>
							    	<option value="5">Rank 5</option>
							    </select>
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






							    <button type="submit">Save Changes</button>
						    </form>
					  	</div>

							    <hr>
					  	<div>
					  		<p>Rank - Salary History</p>
					  		<table>
					  			<tr>
					  				<th>Rank</th>
					  				<th>Salary</th>
					  			</tr>

					  			%for i in rankSalary:
					  			<tr>
					  				<td>Rank {{i[0]}}</td>
					  				<td>{{i[1]}}</td>
					  			</tr>
					  			%end
					  		</table>
					  	</div>


				  	</div>

					
				</div>
		</div>
	</body>
</html>