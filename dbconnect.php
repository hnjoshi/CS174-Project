<?php
$servername = "localhost";
$username = "youthcyb_su";
$password = "007680959";
$dbname = "youthcyb_su";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>