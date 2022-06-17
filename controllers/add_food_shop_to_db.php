<?php
include('open_db_connection.php'); //opening connection to database
//SQL query
	
	$sql_query = "INSERT INTO `food_shops`(`name`, `code`, `address`) VALUES ('" . $_POST["shop_name"] . "','" . $_POST["shop_code"] . "','" . $_POST["shop_address"] . "')";
	echo $sql_query;
	
	/*$result = mysqli_query($connection, $sql_query); //getting data from database and saving it into $result variable*/
	
	if (!mysqli_query($connection, $sql_query)) {
		die("Istaigos pridėti į duomenu baze nepavyko");
	}

include('close_db_connection.php'); //closing connection to database


header('Location:../views/administratorius.php');
exit();
?>