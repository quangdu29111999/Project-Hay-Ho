<?php
$servername = "localhost";
$username = "root";
$password = "Oriz203031";
$db="HairCare";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $db);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>