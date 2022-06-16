<?php
include('open_db_connection.php'); //opening connection to database
//SQL query
	
	$sql_query = "DELETE FROM `food_shops` WHERE `name`='" . $_POST["shop_to_delete"] . "';"; //SQL query
	echo $sql_query;
	
	$result = mysqli_query($connection, $sql_query); //getting data from database and saving it into $result variable*/
	
	if (!mysqli_query($connection, $sql_query)) {
		die("Įstaigos pašalinti iš duomenų bazės nepavyko");
	}

include('close_db_connection.php'); //closing connection to database*/
?>