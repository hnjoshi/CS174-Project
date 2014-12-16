
<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>My Account</title>
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
		} else if(isset($_COOKIE)) {
			$uID = $_COOKIE['remember_me'];
		}
		
		print "<header> <h2>Welcome <em> $uID </em></h2></header>";		
		if(isset($_SESSION["tempvideostorage"])) {
			if(isset($_SESSION["favorites"])) {
				if (array_key_exists("$uID", $_SESSION["favorites"])) { // USER EXIST, add to his exisiting collection.
					$arr = $_SESSION["favorites"]["$uID"];
					$arr = array_merge($arr, $_SESSION["tempvideostorage"]);
					$_SESSION["favorites"]["$uID"] = $arr;
					
					/**
					print "Exisiting ARRAY EXISINTING USER ID: " . PHP_EOL . PHP_EOL;
					print "Here is the dump: " . PHP_EOL . PHP_EOL;
					
					print_r($_SESSION["favorites"]); **/
				} else  { // USER does not exist, create a key for him first. 
					array_push($_SESSION["favorites"]["$uID"], $_SESSION["tempvideostorage"]);
					
					/**
					print "Exisiting ARRAY NEW USER ID: " . PHP_EOL . PHP_EOL;
					print "Here is the dump: " . PHP_EOL . PHP_EOL;
					
					print_r($_SESSION["favorites"]); **/
				}	
			} else { // Create favorites array 
				$_SESSION["favorites"] = array("$uID" => $_SESSION["tempvideostorage"]);
					
					/**
					print "NEW ARRAY IS CREATED" . PHP_EOL . PHP_EOL;
					print "Here is the dump: " . PHP_EOL . PHP_EOL;
					
					print_r($_SESSION["favorites"]); **/
			}
			unset($_SESSION["tempvideostorage"]);
		}
		
		/**	
		var_dump($_SESSION['favorites']); **/
					
		//Display the videos!!!!!
		print "</section>";

		if(isset($_SESSION["favorites"]["$uID"])) {
			$values = $_SESSION["favorites"]["$uID"];
			
			print "<header><h3>These are your latest favorite videos: </h3></header>";
			/**
			foreach($values as $v) {
				$arr = explode("|",$v);
				print "<p><a href=\"$arr[0]\"><img src=\"$arr[1]\" alt='VIDEO' /></a></p>";
			} **/
				
				print "<table align='left'>";
				print "<tr>";
				for($i = 0; $i < count($values) && $i < 5; $i++) { 
					if($i % 2 == 0) {
						print "</tr><tr>";
					}
					
				    $arr = explode("|",$values[$i]);
				    $temp = "$arr[0]";
					print "<td>";
					print "<iframe width='640' height='390' src='$temp' frameborder='0' allowfullscreen></iframe>";
					//width="640" height="390"
					print "</td>";
					
				}
				print "</tr>";

				print "</table>";	
			
		} else {
			include("dbconnect.php"); 
			$query = "Select fvideos from user where email = '$uID'";
			$result = mysqli_query($conn, $query);
			if (list($fvid) = mysqli_fetch_array($result))
            {
				$fvid = explode("$$", $fvid);
				print "<header><h3 align='center'>These are your favorite videos: </h3></header>";
				
				/**
				foreach($fvid as $v) {
					if(!empty($v)){		
					$arr = explode("|",$v);
					print "<p><a href=\"$arr[0]\"><img src=\"$arr[1]\" alt='VIDEO' /></a></p>";}
				} **/
				
				print "<table align='left'>";
				print "<tr>";
				for($i = 0; $i < 5 && $i < count($fvid); $i++) { 
					if($i % 2 == 0) {
						print "</tr><tr>";
					}
					
				    $arr = explode("|",$fvid[$i]);
					print "<td>";
					print "<iframe width='640' height='390' src='$arr[0]' frameborder='0' allowfullscreen></iframe>";
		  			//print "<a href=\"$arr[0]\"><img src=\"$arr[1]\" alt=\"Favorite Video!\"  width='250' height='250' /></a>";
					print "</td>";
					
				}
				print "</tr>";

				print "</table>";					
			}
		} 
	 ?>
     		
<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>