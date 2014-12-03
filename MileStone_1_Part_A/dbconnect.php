<?php
$servername = "jeffreysu.ddns.net:3306";
$username = "root";
$password = "secret123";
$dbname = "174project";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>