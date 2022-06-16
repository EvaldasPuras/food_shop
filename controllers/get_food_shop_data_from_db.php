<?php
include('open_db_connection.php'); //opening connection to database
//---------------------------------------------------------------------------------------------------------------------------


//TYPE QUERY HERE

	//SQL query
	$sql_query = "SELECT * FROM food_shops WHERE name='" . $_POST["shop_to_modify"] . "'"; //SQL query
	
	$result = mysqli_query($connection, $sql_query); //getting data from database and saving it into $result variable
	
	if (mysqli_num_rows($result) == 1) { //if result has more than one row of data
		// output data of each row
		$row = mysqli_fetch_assoc($result);
	} 	
	else {
		echo "0 results";
	}
	


//---------------------------------------------------------------------------------------------------------------------------
include('close_db_connection.php'); //closing connection to database
?>