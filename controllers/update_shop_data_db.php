<?php
include('open_db_connection.php'); //opening connection to database
//SQL query
	
	$sql_query = "UPDATE `food_shops` SET `id`='" . $_POST["shop_id"] . "',`name`='" . $_POST["shop_name"] . "',`code`='" . $_POST["shop_code"] . "',`address`='" . $_POST["shop_address"] . "' WHERE `id`='" . $_POST["shop_to_update"] . "'"; //SQL query
	/*echo $sql_query;*/
	
	$result = mysqli_query($connection, $sql_query); //getting data from database and saving it into $result variable*/
	
	if (!mysqli_query($connection, $sql_query)) {
		die("Įstaigos pašalinti iš duomenų bazės nepavyko");
	}

include('close_db_connection.php'); //closing connection to database*/


header('Location:../views/administratorius.php');
//exit();
?>