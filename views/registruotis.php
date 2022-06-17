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

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (isset($_SESSION['user'])) {
	if ($_SESSION['user'][4] == 0) {
		header('Location: vartotojas.php');
	} else {
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

    <title>Registruotis</title>


    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap.com/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../style/prisijungti_stylesheet.css">
	
	<style>
		
	</style>
  </head>

  <body>
    <form class="form-signin" action="registruotis.php" method="POST">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">Registruotis</h1>
      </div>  
	  <?php
		if (isset($_POST['username']) && isset($_POST['email']) && isset($_POST['slaptazodis']) && isset($_POST['pakartoti_slaptazodi'])) {
			//ar nesutampa slaptazodziai
			if ($_POST['slaptazodis'] != $_POST['pakartoti_slaptazodi']) {
				echo "<div class='alert alert-danger'>Slaptažodžiai nesutampa!</div>";
			} else {
				//ar yra toks email duomenų bazėje
				if (mysqli_num_rows($mysqli->query("SELECT * FROM users WHERE email = '".$_POST['email']."'")) > 0) {
					echo "<div class='alert alert-danger'>Toks el. paštas jau egzistuoja!</div>";
				} else {
					//Naujo vartotojo duomenys įterpiami į lentelę users
					if ($mysqli->query("INSERT INTO users (username, email, password, type) VALUES ('".$_POST['username']."', '".$_POST['email']."', '".md5($_POST['password'])."', 0)") === TRUE) {
						echo "<div class='alert alert-success'>Sėkmingai užsiregistravote. Dabar būsite perkelti į prisijungimo langą.</div><meta http-equiv='refresh' content='3;url=prisijungti.php' />";
						
						
						$query = "select * from users";
						$result = $mysqli->query($query);

					} else {
						// echo "Nepavyko įkelti duomenų į duomenų bazę";
					}
				}
			}
		}
		?>
		<div class="form-floating">
			<input type="text" id="inputName" name="username" class="form-control" placeholder="Vardas ir Pavardė" required autofocus>
			<label for="inputName">Vardas ir Pavardė</label>
		  </div>

      <div class="form-floating mt-3">
        <input type="email" id="inputEmail" name="email" class="form-control" placeholder="El. pašto adresas" required autofocus>
        <label for="inputEmail">El. pašto adresas</label>
      </div>

      <div class="form-floating mt-3">
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Slaptažodis" required>
        <label for="inputPassword">Slaptažodis</label>
      </div>
	  
	  <div class="form-floating my-3">
        <input type="password" id="repeatPassword" name="pakartoti_slaptazodi" class="form-control" placeholder="Pakartokite">
        <label for="repeatPassword">Pakartokite slaptažodį</label>
      </div>

      <button class="btn btn-lg btn-secondary btn-block w-100" type="submit">Registruotis</button>
	  <a href="prisijungti.php">
		<button class="btn btn-lg btn-primary btn-block w-100 my-3" type="button">Prisijungti</button>
		</a>
      <p class="mt-5 mb-3 text-muted text-center">&copy; 2022</p>
    </form>
	
  </body>
</html>