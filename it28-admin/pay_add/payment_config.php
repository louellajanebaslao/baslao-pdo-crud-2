<?php
// Database configuration
/*
$servername = "localhost";
$username = "u593341949_dev_baslao";
$password = "20212118Baslao";
$database = "u593341949_db_baslao";
*/

$servername = "localhost";
$username = "root";
$password = "";
$database = "baslao";
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>