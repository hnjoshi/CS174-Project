<?php 
session_start();
echo "<header id=\"header\" class=\"skel-layers-fixed\"><nav id=\"nav\">";
    echo "<ul><li><a href=\"index.php\">Home</a></li>";
      echo "<li> <a href=\"\" class=\"icon fa-angle-down\">Categories</a>";
        echo "<ul><li> <a href=\"\">Video Length</a><ul>";
             echo " <li><a href=\"5.php\">0-5 min</a></li>";
             echo "<li><a href=\"10.php\">10-20 min</a></li>";
              echo "<li><a href=\"20.php\">20-40 min</a></li>";
              echo "<li><a href=\"40.php\">40- 60 min</a></li>";
              echo "<li><a href=\"1hr.php\">1+ hour</a></li></ul></li>";
          echo "<li> <a href=\"\">Highest Resolution</a><ul>";
              echo "<li><a href=\"144.php\">144p</a></li>";
              echo "<li><a href=\"240.php\">240p</a></li>";
              echo "<li><a href=\"360.php\">360p</a></li>";
              echo "<li><a href=\"480.php\">480p</a></li>";
              echo "<li><a href=\"760.php\">720p</a></li>";
              echo "<li><a href=\"1080.php\">1080p</a></li></ul></li>";
          echo "<li> <a href=\"\">Language</a><ul>";
              echo "<li><a href=\"eng.php\">English</a></li>";
              echo "<li><a href=\"not.php\">Non-English</a></li></ul> </li>";
          echo "<li> <a href=\"\">View Count</a><ul>";
              echo "<li><a href=\"50.php\">50,000 – 75,000</a></li>";
              echo "<li><a href=\"75.php\">75,001-100,000</a></li>";
              echo "<li><a href=\"100.php\">100,001 – 125,000</a></li>";
              echo "<li><a href=\"125.php\">125,001 – 150,000</a></li>";
              echo "<li><a href=\"150.php\">150,000+</a></li></ul></li>";
          echo "<li> <a href=\"\">Video Type</a><ul>";
              echo "<li><a href=\"tutorial.php\">Tutorial</a></li>";
              echo "<li><a href=\"entertainment.php\">Entertainment</a></li>";
              echo "<li><a href=\"application.php\">Application</a></li>";
              echo "<li><a href=\"weapons.php\">Weapons</a></li>";
              echo "<li><a href=\"groupdemo.php\">Group Demo</a></li>";
              echo "<li><a href=\"others.php\">Others</a></li></ul></li></ul></li>";
      echo "<li><a href=\"addvideo.php\" class=\"button\">Add a Video</a></li>";
      echo "<li><a href=\"search.php\" class=\"button\">Search</a></li>";
	  if(isset($_SESSION['uID'])) 
	  {
		  echo "<li><a href=\"user.php\" class=\"button\">My Account</a></li>";
		  echo "<li><a href=\"logout.php\" class=\"button\">Logout</a></li></ul></nav></header>";
	  }
	  else
	  {
		  echo "<li><a href=\"login.php\" class=\"button\">Login</a></li>";
		  echo "<li><a href=\"register.php\" class=\"button\">Register</a></li></ul></nav></header>";
	  }
?>