<?php
/*
$host = 'localhost';
$dbname = 'u593341949_db_baslao';
$username = 'u593341949_dev_baslao';
$password = '20212118Baslao';
*/
$host = 'localhost';
$dbname = 'baslao';
$username = 'root';
$password = '';
try {
 $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
 $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
 die("Database connection failed: " . $e->getMessage());
}