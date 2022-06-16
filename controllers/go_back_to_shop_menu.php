<?php
session_start();
unset($_SESSION['selected_shop_name']);

header('Location:../views/vartotojas.php');
exit();
?>