<?php session_start(); ?>
<!DOCTYPE HTML>
<html>
<head>
<title>CS174 Bonus HW</title>
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
    <iframe src="http://slideful.com/v20141109_0950427538172798_ijf.htm" frameborder="0" style="border:0px;padding:0px;margin:0px;width:740px;height:410px;" allowtransparency="true">
<a href="http://slideful.com/v20141109_0950427538172798_pf.htm">View the slide show</a></iframe> 
     </span>
        <h2>Judo Picture Slideshow</h2>
        <p>Some of the best matches in Judo! Check out our videos to find out more :)</p>
      </section>
<div class="row">
    <div class="6u">
    <!-- link: https://www.youtube.com/watch?v=pRZqRjxkHpk -->
      <section class="box special"> <span class="image featured"><a class="various fancybox.iframe" href="http://www.youtube.com/embed/pRZqRjxkHpk"><img src="https://i.ytimg.com/vi/pRZqRjxkHpk/mqdefault.jpg" alt="" /></a></span>
        <h3>Mr. Bean's Judo Class</h3>
        <p>A very funny video of Mr. Bean attending Judo class. Looks like he's deathly afraid of the instructor :) </p>
      </section>
    </div>
    <div class="6u">
     <!-- link: https://www.youtube.com/watch?v=be-BoM-WokY-->
      <section class="box special"> <span class="image featured"><a class="various fancybox.iframe" href="http://www.youtube.com/embed/be-BoM-WokY"><img src="https://i.ytimg.com/vi/be-BoM-WokY/mqdefault.jpg" alt="" /></a></span>
        <h3>Best Judo Matches</h3>
        <p>Here is a compilation video of some of the best matches in judo. Lots of throwing!</p>
      </section>
    </div>
  </div>
  <div class="row">
    <div class="6u">
      <section class="box special"> <span class="image featured"><a href="http://www.youtube.com/embed/pFM-xRKbSec"><img src="https://i.ytimg.com/vi/pFM-xRKbSec/mqdefault.jpg" alt="" /></a></span>
        <h3>Judo Techniques</h3>
        <p>A couple (more like many!) judo techniques. Mostly a guy being thown down many many times.</p>
      </section>
    </div>
    <div class="6u">
    
      <section class="box special"> <span class="image featured"><a href="http://www.youtube.com/embed/cJTVWcOrUHs"><img src="https://i.ytimg.com/vi/cJTVWcOrUHs/mqdefault.jpg" alt="" /></a></span>
        <h3>This is Judo! 2014</h3>
        <p>Another compilation of Judo matches from 2014 showing the beauty of Judo.</p>
      </section>
    </div>
  </div>
  <div class="row">
    <div class="6u">
    
      <section class="box special"> <span class="image featured"><a href="http://www.youtube.com/embed/rrfdHBxK6iI"><img src="https://i.ytimg.com/vi/rrfdHBxK6iI/mqdefault.jpg" alt="" /></a></span>
        <h3>JAPANESE JUDO</h3>
        <p>A compilation of Judo matches in Japan. A great video showing very nice judo matches.</p>
      </section>
    </div>
    <div class="6u">
      <section class="box special"> <span class="image featured"><a href="http://www.youtube.com/embed/-ldbkg9K70E"><img src="https://i.ytimg.com/vi/-ldbkg9K70E/mqdefault.jpg" alt="" /></a></span>
        <h3>Japan vs Russia Judo match! 2014</h3>
        <p>A fine match between a Russian Judo athlete and a Japanese Judo athlete. </p>
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