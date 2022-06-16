<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	<h1>Maisto įstaigų meniu</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Maisto įstaiga</th>
							<th>Kodas</th>
							<th>Adresas</th>
						</tr>
					</thead>
					
					<tbody>
					
					<?php
						include('controllers/get_all_food_shop_data_from_db.php');
						
						if (mysqli_num_rows($result) > 0){
							// output data of each row
							while($row = mysqli_fetch_assoc($result)) {
								echo "<tr>";
								echo "<td>" . $row["name"] . "</td>";
								echo "<td>" . $row["code"] . "</td>";
								echo "<td>" . $row["address"] . "</td>";
								
								echo "<td>";
								?>
								
								<form action="shop_modification_view.php" method="post">
									<input type="hidden" name="shop_to_modify" value="<?php echo $row["name"] ?>"><br>
									<input type="submit" value="Redaguoti Įstaigą">
								</form>
								
								<?php
								echo "</td>";
								
								
								
								
								echo "<td>";
								?>
								
								<form action="controllers/delete_shop_from_db.php" method="post">
									<input type="hidden" name="shop_to_delete" value="<?php echo $row["name"] ?>"><br>
									<input type="submit" value="Pašalinti įstaigą">
								</form>
								
								<?php
								echo "</td>";
								

								
								
								echo "</tr>";
							}
						}
						else {
							echo "0 results";
						}
					
					?>
					
					</tbody>
				</table>
</body>
</html>
				
				
				