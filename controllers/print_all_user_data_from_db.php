<?php
include('open_db_connection.php'); //opening connection to database
echo "<br>";
//SQL query
	$sql_query = "SELECT `id`, `vp`, `email`, `slaptazodis`, `type` FROM `users`"; //SQL query
	
	$result = mysqli_query($connection, $sql_query); //getting data from database and saving it into $result variable
	
	if (mysqli_num_rows($result) > 0) { //if result has more than one row of data
		// output data of each row
		while($row = mysqli_fetch_assoc($result)) {
			echo "id: " . $row["id"] . " | vp: " . $row["vp"] . " | email: " . $row["email"] . " | slaptazodis: " . $row["slaptazodis"] . " | type: " . $row["type"] . "<br>";
			
		}
	} 	
	else {
		echo "0 results";
	}

include('close_db_connection.php'); //closing connection to database
?>