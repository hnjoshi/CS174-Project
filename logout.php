<?php
session_start();
unset($_SESSION["uID"]);
session_destroy();
if(isset($_COOKIE))
{
setcookie('remember_me', "", time()-31536000);
}
header("Location:index.php");
?>