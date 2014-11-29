<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	$ser= $_GET['id'];
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Video Edit Form</title>
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
<?php include("dbconnect.php"); 
$tmp = substr($_POST['link'], -11);
$tit= $_POST['title'];
$link= "http://www.youtube.com/v/$tmp";
$length= $_POST['length'];
$res= $_POST['HighRes'];
$desc= $_POST['desc'];
$lang= $_POST['lang'];
$view= $_POST['count'];
$type= $_POST['type'];
$icon= $_POST['icon'];
$tag= $_POST['tag'];


$query = "update fun_video set "
                ." `title`='$tit', `videolink`='$link', `videolength`='$length', `highestresolution`='$res', `description`='$desc', `language`='$lang', `viewcount`='$view', `videotype`='$type', `iconimage`='$icon', `tag`='$tag' WHERE `id`='$ser'";
mysqli_query($conn,$query);

include ("nav.php");   
?>
<!-- Main -->
<section id="main" class="container small">
  <header>
    <h2>Thanks!</h2>
    <p>Your video has now been edited in our database</p>
  </header>
</section>

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>