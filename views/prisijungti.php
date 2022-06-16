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

// Check if table users exists
if (!mysqli_num_rows(mysqli_query($mysqli, "SHOW TABLES LIKE 'users'"))) {
	die("Nepavyko rasti lenteles pavadinimu `users`!");
}

//start php session if not started yet
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

//if logged in user is client, go to client window
//if logged in user is admin, go to admin window
if (isset($_SESSION['user'])) {
	if ($_SESSION['user'][4] == 0) {
		header('Location: vartotojas.php');
	} else if ($_SESSION['user'][4] == 1){
		header('Location: administratorius.php');
	}
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

    <title>Maisto parduotuvė</title>


    <link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../style/prisijungti_stylesheet.css">
  </head>

  <body>
    <form class="form-signin" action="prisijungti.php" method="POST">
	
		<div class="text-center mb-4">
        <h1 class="h1 mb-3 font-weight-normal">Maisto parduotuvė</h1>
		<br>
      </div>  
	
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Prisijungimas</h1>
      </div>  
	  <?php
		if (isset($_POST['email']) && isset($_POST['password'])) {
			$row = mysqli_fetch_row($mysqli->query("SELECT * FROM users WHERE email = '".$_POST['email']."' AND password = '".md5($_POST['password'])."'"));
			if (isset($row)) {
				 $_SESSION['user'] = $row;

				if ($row[4] == 0) {
					echo "<meta http-equiv='refresh' content='0;url=vartotojas.php' />";
				} else {
					echo "<meta http-equiv='refresh' content='0;url=administratorius.php' />";
				}
			} else {
				echo "<div class='alert alert-danger'>Klaidingai įvesti prisijungimo duomenys!</div>";
			}
		}
		?>
      <div class="form-floating mt-3">
        <input type="email" id="inputEmail" name="email" class="form-control" placeholder="El. pašto adresas" required autofocus>
        <label for="inputEmail">El. pašto adresas</label>
      </div>

      <div class="form-floating my-3">
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Slaptažodis" required>
        <label for="inputPassword">Slaptažodis</label>
      </div>
	
      <button class="btn btn-lg btn-primary btn-block w-100" type="submit">Prisijungti</button>
	  <a href="registruotis.php">
		<button class="btn btn-lg btn-secondary btn-block w-100 my-3" type="button">Registruotis</button>
		</a>
    </form>
	
  </body>
</html>