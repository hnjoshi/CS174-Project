<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Video Addition Form</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
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
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
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

$query = "insert into fun_video "
                ." (title,videolink,videolength,highestresolution,description,language,viewcount,videotype,iconimage,tag) values "
                ."('$tit', '$link', '$length', '$res', '$desc', '$lang', '$view', '$type', '$icon', '$tag')"
        ;
mysqli_query($conn,$query);

include ("nav.php");   
?>
<!-- Main -->
<section id="main" class="container small">
  <header>
    <h2>Thanks!</h2>
    <p>Your video has now been added to our database</p>
  </header>
  <header> <a href="addvideo.php" class="button">Add Another</a> <a href="search.html" class="button">Search for a Video</a> </header>
</section>

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>