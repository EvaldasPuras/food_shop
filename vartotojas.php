<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$database   = "food_shop";

// Create connection
$mysqli = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$mysqli) {
	die("Nepavyko prisijungti prie duomenu bazes: " . mysqli_connect_error());
}

/*if (session_status() === PHP_SESSION_NONE) {*/
    session_start();
//}

if (!isset($_SESSION['user'])) {
	header('Location: prisijungti.php');
} else {
	if ($_SESSION['user'][4] == 1) {
		header('Location: administratorius.php');
	}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
	
	<link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    <title>Klientas</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >

	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="vartotojas_stylesheet.css">
	
	
	</head>

	<body>
		<div class="container">
			<div class="justify-content-between mb-4">
				<div>
					<h3>Sveiki, <?php echo '<b>' . $_SESSION['user'][1] . '</b>'; ?>.</h3>
				</div>
				
				<div class="ms-auto">
						<a href="atsijungti.php" class="float-right">
							<button type="button" class="btn btn-danger">Atsijungti</button>
						</a>
				</div>
				
				<div class="ms-auto">
						<a href="shopping_cart.php" class="float-right">
							<button type="button" class="btn btn-success">Patiekalų krepšelis</button>
						</a>
				</div>


				<!-- INSERT FOOD SHOP MENU HERE-------------------------------- -->
							
				<?php
				
				
					if (!isset($_SESSION["selected_shop_name"])) {
						include('food_shop_menu.php');
					}
					if (isset($_SESSION["selected_shop_name"])) {
						include('menu_of_selected_shop.php');
					}
					
				?>
				
				
				
				
				
			</div
				
				<!--------------------------------------------------------------------->
				
			</div>
		</div>
	</body>
  
</html>
