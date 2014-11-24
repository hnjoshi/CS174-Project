<?php
ini_set('session.gc_maxlifetime', 1800);
session_set_cookie_params(1800);
session_start();
unset($_SESSION["uID"]);
//session_write_close();
if(isset($_COOKIE))
{
setcookie('remember_me', "", time()-31536000);
}
header("Location:index.php");
?>