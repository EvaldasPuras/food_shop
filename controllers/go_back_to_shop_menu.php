<?php
session_start();
unset($_SESSION['selected_shop_name']);

header('Location:../vartotojas.php');
exit();
?>