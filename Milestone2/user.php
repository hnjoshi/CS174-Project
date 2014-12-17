
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
		
		include("dbconnect.php"); 
		$query = "Select fvideos from user where email = '$uID'";
		$result = $conn->query($query);
		$row = $result->fetch_assoc();
				
		//var_dump($row["fvideos"]);
				
		if(isset($_SESSION["favorites"]["$uID"])) {
			$values = $_SESSION["favorites"]["$uID"];
			
			print "<header><h3 align='center'>These are your latest favorite videos: </h3></header>";
			/**
			foreach($values as $v) {
				$arr = explode("|",$v);
				print "<p><a href=\"$arr[0]\"><img src=\"$arr[1]\" alt='VIDEO' /></a></p>";
			} **/
				
				print "<table align='left'>";
				print "<tr>";
								
				$values = array_filter($values, 'strlen');
				$values = array_filter($values);
				$values = array_values($values);				
				
				for($i = 0; $i < count($values) && $i < 5; $i++) { 					
					if($i % 2 == 0) {
						print "</tr><tr>";
					}
				    $arr = explode("|",$values[$i]);					
				    $temp = "$arr[0]";
								
					if(strpos($temp, 'watch?v=') !== false) {
						$temp = str_ireplace("watch?v=", "embed/", $temp);
					}
					
					
					print "<td>";
					print "<iframe width='640' height='390' src='$temp' frameborder='0' allowfullscreen></iframe>";
					//width="640" height="390"
					print "</td>";
					
				}
				print "</tr>";

				print "</table>";	
			
		} else if ($row["fvideos"] != NULL) {
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
				$fvid = array_filter($fvid, 'strlen');
				$fvid = array_filter($fvid);
				$fvid = array_values($fvid);				
				print "<table align='left'>";
				print "<tr>";
				
				for($i = 0; $i < 5 && $i < count($fvid); $i++) { 
					if($i  % 2 == 0) {
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
		} else {
				print "<header><h3 align='center'>These are Recommended videos You should Watch: </h3></header>";
				
				$randomnum  = rand(1,150); 
	  			$randomnum1 = rand(151,300); 
	  			$randomnum2 = rand(450,580); 
	  			$randomnum3 = rand(700,990); 
	  			
				$query = "select * from fun_video_all where id = $randomnum";
				$query1 = "select * from fun_video_all where id = $randomnum1";
				$query2 = "select * from fun_video_all where id = $randomnum2";
				$query3 = "select * from fun_video_all where id = $randomnum3";
				
				$result =  $conn->query($query); 
				$row = $result->fetch_assoc();
				$link = $row["videolink"];
				
				$result =  $conn->query($query1); 
				$row = $result->fetch_assoc();
				$link1 = $row["videolink"];
		
				$result =  $conn->query($query2); 
				$row = $result->fetch_assoc();
				$link2 = $row["videolink"];
		
				$result =  $conn->query($query3); 
				$row = $result->fetch_assoc();
				$link3 = $row["videolink"];
				
				$values = array($link, $link1, $link2, $link3);
				
				print "<table align='left'>";
				print "<tr>";
				
				
				for($i = 0; $i < count($values); $i++) {
					if($i  % 2 == 0) {
						print "</tr><tr>";
					}
					
					print "<td>";
					$temp = $values[$i];	
			
					if(strpos($temp, 'watch?v=') !== false) {
						$temp = str_ireplace("watch?v=", "embed/", $temp);
					}	
										
					print "<iframe width='640' height='390' src='$temp' frameborder='0' allowfullscreen></iframe>";
					print "</td>";

				}
				print "</tr>";

				print "</table>";
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