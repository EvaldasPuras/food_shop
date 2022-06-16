<?php
include('open_db_connection.php'); //opening connection to database
//---------------------------------------------------------------------------------------------------------------------------


//TYPE QUERY HERE

	//SQL query
	//$sql_query = "SELECT * FROM users WHERE email = '" . "simka@gmail.com" . "' AND slaptazodis = '" . md5("slaptikas123") . "'"; //SQL query
	
	$result = mysqli_query($connection, $sql_query); //getting data from database and saving it into $result variable
	
	if (mysqli_num_rows($result) == 1) { //if result has more than one row of data
		// output data of each row
		$row = mysqli_fetch_assoc($result);
		//echo "id: " . $row["id"] . " | vp: " . $row["vp"] . " | email: " . $row["email"] . " | slaptazodis: " . $row["slaptazodis"] . " | type: " . $row["type"] . "<br>";
		/*$email = $row["email"];
		$password = $row["slaptazodis"];*/
	} 	
	else {
		echo "0 results";
	}
	


//---------------------------------------------------------------------------------------------------------------------------
include('close_db_connection.php'); //closing connection to database
?>