<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
include("dbconnect.php");	
$ser= $_GET['id'];
$query = "Select videolink, title, videolength, highestresolution, description,language, viewcount, videotype, iconimage, tag, category from fun_video_all where id = $ser";
$result = mysqli_query($conn, $query);
list($link, $title, $length, $res, $desc, $lang, $count, $type, $icon, $tag, $cat) = mysqli_fetch_array($result)
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Edit Video Form</title>
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
<?php include("nav.php"); ?>
<!-- Main -->
<section id="main" class="container small">
  <header>
    <h2>Video Edit Form for Administrators</h2>
    <p>Edit a fun video in the database!</p>
  </header>
  <div class="box">
    <?php 
    echo "<form method=post action='editentry.php?id=$ser'>";
    
      echo "<div class='row uniform half'>";
       echo " <div class='12u'>";
        echo "  <input type='text' name='title' value= '$title' ></div> </div>";
      echo "<div class='row uniform half'><div class='12u'>";
         echo " <input type='text' name='link' value= '$link' > </div></div> <div class='row uniform half collapse-at-2'>";
        echo "<div class='6u'><input type='text' name='length' value= '$length' > </div> ";
		echo "<div class='6u'>  <select name='HighRes'>
            <option selected>$res</option>
            <option>144</option>
            <option>240</option>
            <option>360</option>
            <option>480</option>
            <option>720</option>
            <option>1080</option>
          </select></div></div>";
      echo "<div class='row uniform half'> <div class='12u'><textarea name='desc' rows='4'>$desc</textarea></div></div>";
	  if($lang == "English")
	  {
		  $other = "Non-English";
	  }
	  else 
	  {
		  $other = "English";
	  }
      echo "<div class='row uniform half collapse-at-2'><div class='6u'><select name='lang'>  <option>Language</option> <option selected>$lang</option> <option>$other</option></select></div>";
        echo "<div class='6u'> <input type='text' name='count' value= '$count' ></div></div>";
     echo " <div class='row uniform half collapse-at-2'> <div class='6u'> <select name='type' multiple>";
           echo " <option selected>$type</option><option>Tutorial</option><option>Entertainment</option><option>Application</option> <option>Weapon</option><option>Group demo</option><option>Others</option></select>
        </div> <div class='6u'> <input type='text' name='icon' value= '$icon' ></div> </div>";
      echo "<div class='row uniform half collapse-at-2'> <div class='6u'><input type='text' name='tag' value= '$tag' ></div><div class='6u'>
          <select name='category'>
            <option selected>$cat</option>
            <option>Yang Taichi</option>
            <option>Chen Taichi</option>
            <option>Sun Taichi</option>
            <option>Wu Taichi</option>
            <option>QiGong</option>
            <option>Shaolin</option>
            <option>Tae kwon do</option>
            <option>Wing Chun</option>
            <option>Aikido</option>
            <option>Judo</option>
            <option>KungFu Movie</option>
          </select>
        </div></div>";
	  ?>
      <div class='row uniform'>
        <div class='12u'>
          <ul class='actions align-center'>
            <li>
              <input type='submit' value='Submit' />
            </li>
          </ul>
        </div>
      </div>
    </form>
	
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