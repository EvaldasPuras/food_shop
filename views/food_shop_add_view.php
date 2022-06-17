<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
		<link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<title>Nauja maitinimo įstaiga</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="../style/administratorius_stylesheet.css">
		<style>

		</style>
	

</head>
<body>


<div class="container">
			<div class="justify-content-between mb-4">
			
			
	<h1>Nauja maitinimo įstaiga</h1>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Pavadinimas</th>
				<th>Kodas</th>
				<th>Adresas</th>
				<th></th>
			</tr>
		</thead>
					
		<tbody>
					<form action="../controllers/add_food_shop_to_db.php" method="post">
						
						<td>		
							<input type="input" name="shop_name" value=""><br>
						</td>
						
						<td>		
							<input type="input" name="shop_code" value=""><br>
						</td>
						
						<td>		
							<input type="input" name="shop_address" value=""><br>
						</td>
					
						<td>		
							<input type="submit" class="btn btn-primary" value="Pridėti maitinimo įstaigą">
						</td>
					</form>
					

					
					
					
					<form action="administratorius.php">
							
							<input type="submit" value="Atgal">
					</form>
					
			</tbody>
		</table>
		
		</div>
		</div>
	</body>
</html>
				
				
				