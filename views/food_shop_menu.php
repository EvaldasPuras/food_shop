<!DOCTYPE html>
<html lang="en">
<body>
	<h1>Maisto įstaigų meniu</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Maisto įstaiga</th>
							<th>Kodas</th>
							<th>Adresas</th>
							<th></th>
						</tr>
					</thead>
					
					<tbody>
					
					<?php
						include('../controllers/get_all_food_shop_data_from_db.php');
						
						if (mysqli_num_rows($result) > 0){
							// output data of each row
							while($row = mysqli_fetch_assoc($result)) {
								echo "<tr>";
								echo "<td>" . $row["name"] . "</td>";
								echo "<td>" . $row["code"] . "</td>";
								echo "<td>" . $row["address"] . "</td>";
								echo "<td>";
							?>
							
							<form action="../controllers/select_shop.php" method="post">
								<button class="btn btn-primary" type="submit" value="Pasirinkti">Pasirinkti</button>
								<input type="hidden" name="selected_shop_name" value="<?php echo $row["name"] ?>"><br>
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
				
				
				