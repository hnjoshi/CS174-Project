<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Search</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/jquery.scrollgress.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<noscript>
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
</head><body>
<?php
include("nav.php");
?>
<!-- Main -->
<section id="main" class="container small">
	<?php 
		
		if(isset($_SESSION["uID"])) {
			$uID = $_SESSION["uID"];
		} else if(isset($_COOKIE['remeber_me'])) {
				$uID = $_COOKIE['remember_me'];
		} else { 
		//If they are not logged in, have them logg in first.
			$_SESSION['notloggedin'] = "YOU MUST BE LOGGED IN TO ADD VIDEOS TO FAVORITES LIST. PLEASE LOGIN!";
			
			header("Location:login.php");
		}
		
		if(isset($uID)) {
			$_SESSION['tempvideostorage'] = $_POST['fav'];
			
			header("Location:user.php");
 		} 
	?>
				
</section>
<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>