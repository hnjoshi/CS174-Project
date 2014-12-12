
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
include("dbconnect.php");
?>
<!-- Main -->
<section id="main" class="container small">
	<?php 
			if(isset($_SESSION["uID"])) {
				$uID = $_SESSION["uID"];	
			} else if(isset($_COOKIE)) {
				$uID = $_COOKIE['remember_me'];
			}
					
			//Display the videos!!!!!
			if(isset($_SESSION["favorites"]["$uID"])) {
				
				
			 if ($_SERVER['REQUEST_METHOD'] == 'POST') {
					if(isset($_POST["val"])) {
						$_SESSION["favorites"]["$uID"] = array_diff($_SESSION["favorites"]["$uID"], array($_POST["val"]));
						//unset($_POST["val"]);
					}
				}
				
				$values = $_SESSION["favorites"]["$uID"];
				
				if(!empty($values)) {
					print "<header><h3>These are your favorite videos: </h3></header>";
					print "<table>";
					
					foreach($values as $v) {
							print "<tr>";
							if(!empty($v)){		
								$arr = explode("|",$v);
								print "<td><a href=\"$arr[0]\"><img src=\"$arr[1]\" alt='VIDEO' /></a></td>";
								print "<form action='deletefav.php' method='post'>";
								print "<td><input type='hidden' value='$v' name='val'/></td>";
								print "<td><input type='submit' value='Delete From Favorites!' /></td>";
								print "</form>";
							}
							print "</tr>";
					}
					print "<table>";
				} else {
					print "<h3 align='center'>You do not have any Favorite Videos!</h3>";
				}
			} else {
				$query = "Select fvideos from user where email = '$uID'";
				$result = mysqli_query($conn, $query);
				if (list($fvid) = mysqli_fetch_array($result))
				{
					if ($_SERVER['REQUEST_METHOD'] == 'POST') {
						if(isset($_POST["val2"])) {
							$temp_val = $_POST["val2"];
							$updated_fvideos = str_replace($temp_val, "", $fvid);
														
							$query = "update user set fvideos = '$updated_fvideos' where email = '$uID'";
							//$result = mysqli_query($conn, $query);

							if($conn->query($query) == True) {
								$query = "Select fvideos from user where email = '$uID'";
								$result = mysqli_query($conn, $query);
								if (list($new_fvid) = mysqli_fetch_array($result)) {
									$fvid = $new_fvid;
								}
							}
														
							unset($_POST["val2"]);
						}
					}

					
					$fvid = explode("$$", $fvid);
					print "<header><h3>These are your favorite videos: </h3></header>";
					print "<table>";
					foreach($fvid as $v) {
						if(!empty($v)){
							print "<tr>";
							$arr = explode("|",$v);
							print "<td><a href=\"$arr[0]\"><img src=\"$arr[1]\" alt='VIDEO' /></a></td>"; 
							print "<form action='deletefav.php' method='post'>";
							print "<input type='hidden' value='$v' name='val2'/>";
							print "<td><input type='submit' value='Delete From Favorites!' /></td>";
							print "</form>";
							print "</tr>";
						}
					}
					print "<table>";
				} else {
					print "<h3 align='center'>You do not have any Favorite Videos!</h3>";
				}
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