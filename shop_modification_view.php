<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<h1>Maisto įstaigos redagavimas</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Maisto įstaigos ID</th>
							<th>Pavadinimas</th>
							<th>Kodas</th>
							<th>Adresas</th>
						</tr>
					</thead>
					
					<tbody>
					
					<?php
						include('controllers/get_food_shop_data_from_db.php');
						
						echo $row["name"] . "<br>";
						echo $row["code"] . "<br>";
						echo $row["address"] . "<br>";
						
						
						
						
						
						
						/*if (mysqli_num_rows($result) == 1){
							
							$row = mysqli_fetch_assoc($result);
								echo "<tr>";
								echo "<td>" . $row["name"] . "</td>";
								echo "<td>" . $row["code"] . "</td>";
								echo "<td>" . $row["address"] . "</td>";

							echo "</tr>";
							
						}
						else {
							echo "0 results";
						}*/
					
					?>
					
					</tbody>
				</table>
</body>
</html>
				
				
				