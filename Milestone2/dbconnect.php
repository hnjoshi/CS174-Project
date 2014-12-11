<?php
$servername = "54.69.117.137:3306";
$username = "fun_user";
$password = "fun_password";
$dbname = "fun_video";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>