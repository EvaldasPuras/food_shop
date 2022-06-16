<?php
/*session_start();*/

?>

<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
	
	<h1>Įstaigos <?php echo $_SESSION["selected_shop_name"] ?> meniu</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Patiekalas</th>
							<th>Aprašymas</th>
						</tr>
					</thead>
					
					<tbody>
					
					<?php
						include('controllers/get_dishes_of_food_shop.php');
						
						if (mysqli_num_rows($result) > 0){
							// output data of each row
							while($row = mysqli_fetch_assoc($result)) {
								echo "<tr>";
								echo "<td>" . $row["name"] . "</td>";
								echo "<td>" . $row["description"] . "</td>";
								echo "<td>";
							?>
							
							<form action="controllers/add_dish_to_shopping_cart.php" method="post">
							
								<input type="hidden" name="dish_to_add" value="<?php echo $row["name"] ?>"><br>
								<input type="submit" value="įdėti į krepšelį">
								
								
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
				
				<br>
				<br>
				<br>
				
				
								<form action="controllers/go_back_to_shop_menu.php">
							
							<input type="submit" value="Atgal">
				</form>
	
	
</body>
</html>
				
				
				