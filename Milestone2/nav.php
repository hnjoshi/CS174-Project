<?php 
if(isset($_COOKIE)) {
            if(isset($_COOKIE['remember_me'])) {
                $_SESSION['uID'] = $_COOKIE['remember_me'];
				$_SESSION['type'] = $_COOKIE['type'];
            }
        }
echo "<header id='header' class='skel-layers-fixed'><nav id='nav'>";
echo "<ul><li><a href=\"index.php\">Home</a></li>";
       echo "<li> <a href=\"\" class=\"icon fa-angle-down\">Categories</a>";
         echo "<ul><li> <a href=\"\">Video Length</a><ul>";
              echo " <li><a href=\"category.php?value=videolength < '5'\">0-5 min</a></li>";
              echo "<li><a href=\"category.php?value=videolength between '10' and '20'\">10-20 min</a></li>";
               echo "<li><a href=\"category.php?value=videolength between '20' and '40'\">20-40 min</a></li>";
               echo "<li><a href=\"category.php?value=videolength between '40' and '60'\">40- 60 min</a></li>";
               echo "<li><a href=\"category.php?value=videolength > '60'\">1+ hour</a></li></ul></li>";
           echo "<li> <a href=\"\">Highest Resolution</a><ul>";
               echo "<li><a href=\"category.php?value=highestresolution='144' \">144p</a></li>";
               echo "<li><a href=\"category.php?value=highestresolution='240' \">240p</a></li>";
               echo "<li><a href=\"category.php?value=highestresolution = '360'\">360p</a></li>";
               echo "<li><a href=\"category.php?value=highestresolution = '480'\">480p</a></li>";
               echo "<li><a href=\"category.php?value=highestresolution = '720'\">720p</a></li>";
               echo "<li><a href=\"category.php?value=highestresolution = '1080'\">1080p</a></li></ul></li>";
           echo "<li> <a href=\"\">Language</a><ul>";
               echo "<li><a href=\"category.php?value=language = 'English'\">English</a></li>";
               echo "<li><a href=\"category.php?value=language = 'Non-English'\">Non-English</a></li></ul> </li>";
           echo "<li> <a href=\"\">View Count</a><ul>";
               echo "<li><a href=\"category.php?value=viewcount between '50000' and '75000'\">50,000 – 75,000</a></li>";
               echo "<li><a href=\"category.php?value=viewcount between '75001' and '100000'\">75,001-100,000</a></li>";
               echo "<li><a href=\"category.php?value=viewcount between '100001' and '125000'\">100,001 – 125,000</a></li>";
               echo "<li><a href=\"category.php?value=viewcount between '125001' and '150000'\">125,001 – 150,000</a></li>";
               echo "<li><a href=\"category.php?value=viewcount > '150000'\">150,000+</a></li></ul></li>";
           echo "<li> <a href=\"\">Video Type</a><ul>";
               echo "<li><a href=\"category.php?value=videotype = 'Tutorial'\">Tutorial</a></li>";
               echo "<li><a href=\"category.php?value=videotype = 'Entertainment'\">Entertainment</a></li>";
               echo "<li><a href=\"category.php?value=videotype = 'Application'\">Application</a></li>";
               echo "<li><a href=\"category.php?value=videotype = 'Weapon'\">Weapons</a></li>";
               echo "<li><a href=\"category.php?value=videotype = 'Group demo'\">Group Demo</a></li>";
               echo "<li><a href=\"category.php?value=videotype = 'others'\">Others</a></li></ul></li></ul></li>";
	  if(isset($_SESSION['uID'])) 
	  {
		 echo "<li><a href='' class='icon fa-angle-down'>My Account</a>";
		  echo " <ul><li> <a href='user.php'>User Dashboard</a></li>";
		  echo " <li> <a href='deletefav.php'>View/Delete Favorites</a></li>";
		  echo " <li> <a href='moduser.php'>Edit your User Info</a></li></ul></li>"; 
	  }
      echo "<li><a href='addvideo.php' class='button'>Add a Video</a></li>";
      echo "<li><a href='search.php' class='button'>Search</a></li>";
	  if(isset($_SESSION['uID'])) 
	  {
		  echo "<li><a href='logout.php' class='button'>Logout</a></li></ul></nav></header>";
	  }
	  else
	  {
		  echo "<li><a href='login.php' class='button'>Login</a></li>";
		  echo "<li><a href='register.php' class='button'>Register</a></li></ul></nav></header>";
	  }
?>