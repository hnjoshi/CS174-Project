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
   
?>
<!-- Header -->
<header id="header" class="skel-layers-fixed">
  <nav id="nav">
    <ul>
      <li><a href="index.html">Home</a></li>
      <li> <a href="" class="icon fa-angle-down">Categories</a>
        <ul>
          <li> <a href="">Video Length</a>
            <ul>
              <li><a href="5.php">0-5 min</a></li>
              <li><a href="10.php">10-20 min</a></li>
              <li><a href="20.php">20-40 min</a></li>
              <li><a href="40.php">40- 60 min</a></li>
              <li><a href="1hr.php">1+ hour</a></li>
            </ul>
          </li>
          <li> <a href="">Highest Resolution</a>
            <ul>
              <li><a href="144.php">144p</a></li>
              <li><a href="240.php">240p</a></li>
              <li><a href="360.php">360p</a></li>
              <li><a href="480.php">480p</a></li>
              <li><a href="760.php">720p</a></li>
              <li><a href="1080.php">1080p</a></li>
            </ul>
          </li>
          <li> <a href="">Language</a>
            <ul>
              <li><a href="eng.php">English</a></li>
              <li><a href="not.php">Non-English</a></li>
            </ul>
          </li>
          <li> <a href="">View Count</a>
            <ul>
              <li><a href="50.php">50,000 – 75,000</a></li>
              <li><a href="75.php">75,001-100,000</a></li>
              <li><a href="100.php">100,001 – 125,000</a></li>
              <li><a href="125.php">125,001 – 150,000</a></li>
              <li><a href="150.php">150,000+</a></li>
            </ul>
          </li>
          <li> <a href="">Video Type</a>
            <ul>
              <li><a href="tutorial.php">Tutorial</a></li>
              <li><a href="entertainment.php">Entertainment</a></li>
              <li><a href="application.php">Application</a></li>
              <li><a href="weapons.php">Weapons</a></li>
              <li><a href="groupdemo.php">Group Demo</a></li>
              <li><a href="others.php">Others</a></li>
            </ul>
          </li>
        </ul>
      </li>
      <li><a href="addvideo.html" class="button">Add a Video</a></li>
      <li><a href="search.html" class="button">Search</a></li>
    </ul>
  </nav>
</header>

<!-- Main -->
<section id="main" class="container small">
  <header>
    <h2>Thanks!</h2>
    <p>Your video has now been added to our database</p>
  </header>
  <header> <a href="addvideo.html" class="button">Add Another</a> <a href="search.html" class="button">Search for a Video</a> </header>
</section>

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; Jeffrey Su. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>