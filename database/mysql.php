<?php 
require_once 'db.php';

$queryBrand = "SELECT * FROM brand_haircare WHERE id = 1";
$resuultBrand = mysqli_query($conn, $queryBrand);
$rowBrand = mysqli_fetch_assoc($resuultBrand);
?>