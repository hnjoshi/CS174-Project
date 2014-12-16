<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
session_start(); ?>
<!DOCTYPE HTML>
<html>
<head>
<title>CS174 Project</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/jquery.scrollgress.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
        <script src="jquery.js"></script>
        <!--<script src="slideshow.js"></script>-->
        <script src="youtubeplayer.js"></script>
<noscript>
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
</head>
<body class="landing">
<?php include("navmain.php"); include("dbconnect.php") ?>
<!-- Banner -->
<section id="banner">
  <h2>CS174 Fun Video!</h2>
  <ul class="actions">
    <li><a href="addvideo.php" class="button special">Add a Video!</a></li>
  </ul>
</section>
<!-- Main -->
<section id="main" class="container"> 
  
  <!-- CTA -->
  <section id="cta">
    <h2>Search for a Video!</h2>
    <form method="post" action="searchresults.php">
      <div class="row uniform half collapse-at-2">
        <div class="8u">
          <input type="text" name="search" id="text" />
        </div>
        <div class="4u">
          <input type="submit" value="Search" class="fit" />
        </div>
      </div>
    </form>
  </section>
  
  
  
<section style="margin-top:5%; margin-bottom:5%;" align="center"> <!--
        Slideshow sources:
        http://stackoverflow.com/questions/13807788/web-based-fullscreen-slideshow-with-video-elements
        http://stackoverflow.com/questions/13807788/web-based-fullscreen-slideshow-with-video-elements
        https://developers.google.com/youtube/iframe_api_reference
        -->

        <div id="ytplayer"></div>

        <div id="browse-container">
            <button class="button" id="prev-button">Previous</button>
            <button class="button" id="next-button">Next</button>
        </div>
        
        <div class="slideshow-overlay">
        
        </div> </section>
  
  
  
  
  
  <section class="box special">
    <header class="major">
      <h2>Here are some featured Videos!</h2>
      <p>Help us by adding more videos using the "Add a Video" button above!!</p>
    </header>
    <span class="image featured">
    
     </span>
      </section>
<div class="row">
    <div class="6u">
      <section class="box special"> <span class="image featured">
      <?php
	  	$randomnum = rand(1,150); 
	  	$query = "select * from fun_video_all where id = $randomnum" ; //175
		$result =  $conn->query($query); 
		$row = $result->fetch_assoc();
		$link = $row["videolink"];
		$image = $row["iconimage"];
		$title = $row["title"];
		$category = $row["category"];
	   echo " <a href='$link'> <img src='$image' alt='' /></a> "
	    ?> </span>
        <h3><?php echo "Title: " .  $title; ?></h3>
        <p><?php echo "Category: " .  $category; ?></p>
      </section>
    </div>
    <div class="6u">
      <section class="box special"> <span class="image featured">
      <?php
	    $randomnum = rand(151,300); 
	  	$query = "select * from fun_video_all where id = $randomnum" ;
		$result =  $conn->query($query); 
		$row = $result->fetch_assoc();
		$link = $row["videolink"];
		$image = $row["iconimage"];
		$title = $row["title"];
		$category = $row["category"];
		
	   echo " <a href='$link'> <img src='$image' alt='' /></a> "
	    ?> </span>
        <h3><?php echo "Title: " .  $title; ?></h3>
        <p><?php echo "Category: " .  $category; ?></p>
      </section>
    </div>
  </div>
  <div class="row">
    <div class="6u">
      <section class="box special"> <span class="image featured">
      <?php
	    $randomnum = rand(301,450); 
	  	$query = "select * from fun_video_all where id = $randomnum" ;
		$result =  $conn->query($query); 
		$row = $result->fetch_assoc();
		$link = $row["videolink"];
		$image = $row["iconimage"];
		$title = $row["title"];
		$category = $row["category"];
		
	   echo " <a href='$link'> <img src='$image' alt='' /></a> "
	    ?> </span>
        <h3><?php echo "Title: " .  $title; ?></h3>
        <p><?php echo "Category: " .  $category; ?></p>
      </section>
    </div>
    <div class="6u">
    
      <section class="box special"> <span class="image featured">
      <?php
	  	$randomnum = rand(451,600); 
	  	$query = "select * from fun_video_all where id = $randomnum" ;
		$result =  $conn->query($query); 
		$row = $result->fetch_assoc();
		$link = $row["videolink"];
		$image = $row["iconimage"];
		$title = $row["title"];
		$category = $row["category"];
		
	   echo " <a href='$link'> <img src='$image' alt='' /></a> "
	    ?> </span>
        <h3><?php echo "Title: " .  $title; ?></h3>
        <p><?php echo "Category: " .  $category; ?></p>
      </section>
    </div>
  </div>
  <div class="row">
    <div class="6u">
    
      <section class="box special"> <span class="image featured">
      <?php
	  	$randomnum = rand(601,750); 
	  	$query = "select * from fun_video_all where id = $randomnum";
		$result =  $conn->query($query); 
		$row = $result->fetch_assoc();
		$link = $row["videolink"];
		$image = $row["iconimage"];
		$title = $row["title"];
		$category = $row["category"];
		
	   echo " <a href='$link'> <img src='$image' alt='' /></a> "
	    ?> </span>
        <h3><?php echo "Title: " .  $title; ?></h3>
        <p><?php echo "Category: " .  $category; ?></p>
      </section>
    </div>
    <div class="6u">
      <section class="box special"> <span class="image featured">
      <?php
	    $randomnum = rand(751,999); 
	  	$query = "select * from fun_video_all where id = $randomnum";
		$result =  $conn->query($query); 
		$row = $result->fetch_assoc();
		$link = $row["videolink"];
		$image = $row["iconimage"];
		$title = $row["title"];
		$category = $row["category"];
		
	   echo " <a href='$link'> <img src='$image' alt='' /></a> "
	    ?> </span>
        <h3><?php echo "Title: " .  $title; ?></h3>
        <p><?php echo "Category: " .  $category; ?></p>
      </section>
    </div>
  </div>
</section>

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>