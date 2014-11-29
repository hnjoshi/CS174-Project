<?php
ini_set('session.gc_maxlifetime', 1800);
session_set_cookie_params(1800);
session_start();

$uID = $_SESSION["uID"];
if(isset($_SESSION["favorites"]["$uID"])) {
	include("dbconnect.php");
	$values = $_SESSION["favorites"]["$uID"];
	$value = implode("$$", $values);
	$query = "UPDATE user SET fvideos ='$value' WHERE uID= '$uID'";
	$result = mysqli_query($conn, $query);
} 

//session_write_close();
if(isset($_COOKIE))
{
	setcookie('remember_me', "", time()-31536000);
}

unset($_SESSION["uID"]);
header("Location:index.php");
?>