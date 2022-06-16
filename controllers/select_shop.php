<?php
session_start();
$_SESSION["selected_shop_name"] = $_POST["selected_shop_name"];
/*echo $_SESSION["selected_shop_name"];*/

header('Location:../views/vartotojas.php');
exit();
?>