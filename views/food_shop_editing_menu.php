<!DOCTYPE html>
<html lang="en">
<head>
	<style>
		
	
	</style>
</head>
<body>
	<h1>Maisto įstaigų Redagavimas</h1>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Įstaigos ID</th>
				<th>Pavadinimas</th>
				<th>Kodas</th>
				<th>Adresas</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
					
		<tbody>
		
					<!-- -->
					
					
						<form action="food_shop_add_view.php" method="post">
								<input style="margin-bottom: 35px" type="submit" class="btn btn-primary" value="Pridėti naują maitinimo įstaigą">
						</form>
					
					<!-- -->
					
			<?php
				include('../controllers/get_all_food_shop_data_from_db.php');
						
				if (mysqli_num_rows($result) > 0){
							// output data of each row
				while($row = mysqli_fetch_assoc($result)) {
				echo "<tr>";
				?>
					<form action="../controllers/update_shop_data_db.php" method="post">
						<td>		
							<input type="input" name="shop_id" value="<?php echo $row["id"] ?>"><br>
						</td>
						
						<td>		
							<input type="input" name="shop_name" value="<?php echo $row["name"] ?>"><br>
						</td>
						
						<td>		
							<input type="input" name="shop_code" value="<?php echo $row["code"] ?>"><br>
						</td>
						
						<td>		
							<input type="input" name="shop_address" value="<?php echo $row["address"] ?>"><br>
						</td>
					
						<td>		
							<input type="submit" class="btn btn-primary" value="Patvirtinti įstaigos duomenis">
							<input type="hidden" name="shop_to_update" value="<?php echo $row["id"] ?>"><br>
							
						</td>
					</form>
					
						<td>
							<form action="../controllers/delete_shop_from_db.php" method="post">
								<input type="submit" class="btn btn-warning" value="Pašalinti įstaigą">
								<input type="hidden" name="shop_to_delete" value="<?php echo $row["id"] ?>"><br>
							</form>
						</td>
					
					
					
					<?php
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
				
				
				