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
<noscript>
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
</head>
<body class="landing">
<?php include("navmain.php"); ?>
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
      <section class="box special"> <span class="image featured"><a href=""><img src="https://i.ytimg.com/vi/asdf/mqdefault.jpg" alt="" /></a></span>
        <h3>PLACEHOLDER</h3>
        <p>PLACEHOLDER </p>
      </section>
    </div>
    <div class="6u">
      <section class="box special"> <span class="image featured"><a href=""><img src="https://i.ytimg.com/vi/asdf/mqdefault.jpg" alt="" /></a></span>
        <h3>PLACEHOLDER</h3>
        <p>PLACEHOLDER</p>
      </section>
    </div>
  </div>
  <div class="row">
    <div class="6u">
      <section class="box special"> <span class="image featured"><a href=""><img src="https://i.ytimg.com/vi/asdf/mqdefault.jpg" alt="" /></a></span>
        <h3>PLACEHOLDER</h3>
        <p>PLACEHOLDER</p>
      </section>
    </div>
    <div class="6u">
    
      <section class="box special"> <span class="image featured"><a href=""><img src="https://i.ytimg.com/vi/asdf/mqdefault.jpg" alt="" /></a></span>
        <h3>PLACEHOLDER</h3>
        <p>PLACEHOLDER</p>
      </section>
    </div>
  </div>
  <div class="row">
    <div class="6u">
    
      <section class="box special"> <span class="image featured"><a href=""><img src="https://i.ytimg.com/vi/asdf/mqdefault.jpg" alt="" /></a></span>
        <h3>PLACEHOLDER</h3>
        <p>PLACEHOLDER</p>
      </section>
    </div>
    <div class="6u">
      <section class="box special"> <span class="image featured"><a href=""><img src="https://i.ytimg.com/vi/asdf/mqdefault.jpg" alt="" /></a></span>
        <h3>PLACEHOLDER</h3>
        <p>PLACEHOLDER</p>
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