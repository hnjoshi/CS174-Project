<?php
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Advanced Search</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/jquery.scrollgress.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script src="js/jquery.dataTables.js"></script>
<noscript>
<link rel="stylesheet" href="css/jquery.dataTables.css" />
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
<script>			
$(document).ready(function() {
    $('#results').dataTable(
	{"sDom": '<"top"p>'});
} );
	</script>
</head><body>
<?php
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
include("dbconnect.php");
if(isset($_POST['adv']))
{
$ser= $_POST['adv'];
$query = "Select id, videolink, title, videolength, highestresolution, description,language, viewcount, videotype, iconimage, tag, category  from fun_video_all where title like '%$ser%' || description like '%$ser%' || tag like '%$ser%' ";
$result = mysqli_query($conn, $query);
}
include("nav.php");
?>
<!-- Main -->
<section id="main" class="container large">
  <header>
    <h2>Advanced Search</h2>
    </header>
    <div class="box">
    <form method=post action="advsearch.php">
      <div class="row uniform half collapse-at-6">
        <div class="2u">
         <select name='HighRes'>
          <option>Highest Resolution</option>
          <option value "highestresolution='144'">144p</option>
          <option value "highestresolution='240'">240p</option>
          <option value "highestresolution='360'">360p</option>
          <option value "highestresolution='480'">480p</option>
          <option value "highestresolution='720'">720p</option>
          <option value "highestresolution='1080'">1080p</option>
        </select>
        </div>
        <div class="2u">
        <select name='views'>
          <option>View Count</option>
          <option value "viewcount between '50000' and '75000'">50,000 - 75,000</option>
          <option value "viewcount between '75001' and '100000'">75,000 - 100,000</option>
          <option value "viewcount between '100001' and '125000'">100,001 - 125,000</option>
          <option value "viewcount between '125001' and '150000'">125,001 - 150,000</option>
          <option value "viewcount &gt '150000'">150,000 + </option>
        </select>
        </div>
        <div class="2u">
        <select name='length'>
          <option>Video Length</option>
          <option value "videolength < '5'">0-5 min</option>
          <option value "videolength between '10' and '20'">10-20 min</option>
          <option value "videolength between '20' and '40'">20-40 min</option>
          <option value "videolength between '40' and '60'">40-60 min</option>
          <option value "videolength &gt '60'">More than 1 hr </option>
        </select>
        </div>
       <div class="2u">
        <select name='lang'>
          <option>Language</option>
          <option value "language = 'English'">English</option>
          <option value "language = 'Non-English'">Non-English</option>
        </select>        
      </div>
      <div class="2u">
          <select name="type">
            <option>Video Type</option>
            <option value = "videotype = 'Tutorial'">Tutorial</option>
            <option value = "videotype = 'Entertainment'">Entertainment</option>
            <option value = "videotype = 'Application'">Application</option>
            <option value = "videotype = 'Weapon'">Weapon</option>
            <option value = "videotype = 'Group demo'">Group demo</option>
            <option value = "videotype = 'others'">Others</option>
          </select>
        </div>
        <div class="2u">
          <select name="category">
            <option>Video Category</option>
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
        </div>
      </div>
      <div class="row uniform">
        <div class="12u">
          <ul class="actions align-center">
            <li>
              <input type="submit" value="Submit" />
            </li>
          </ul>
        </div>
      </div>
    </form>
  </div>
  
</section>
<?php 
if(isset($_POST['adv']))
{
echo "<section id='main' class='container large'>";
  echo "<form action='get_videos.php' method=post>";
    echo "<table id='results' class='display' cellspacing='0' width='100%'>";
      echo "<thead><tr>";
	  if($_SESSION['type']=='Admin') { echo "<th> Edit Video </th>";} 
          echo "<th>Video Link</th>
          <th>Video Title</a></th>
          <th>Video Length</a></th>
          <th>Highest Resolution</a></th>
          <th>Video Description</a></th>
          <th>Language</a></th>
          <th>View Count</a></th>
          <th>Video Type</a></th>
          <th>Tag</a></th>
          <th>Category</th>
          <th>ADD TO FAVORITES</th>
        </tr>
      </thead>
      <tbody>";
      
	            $c = 1;

	  while (list($id, $link, $title, $length, $res, $desc, $lang, $count, $type, $icon, $tag, $cat) = mysqli_fetch_array($result))
        {
			print "<tr>";
			if($_SESSION['type']=="Admin") 
				{ 
				echo "<td><a href=\"editvideo.php?id=$id\" class=\"button\">Edit</a> </td>";
				} 
			echo "<td><a href=\"$link\" target=\"_blank\"> <img src=\"$icon\" width=\"150\" height=\"150\"></a> </td>";
			print "<td> $title </td>";
			print "<td> $length </td>";
			print "<td> $res </td>";
			print "<td> $desc </td>";
			print "<td> $lang </td>";
			print "<td> $count </td>";
			print "<td> $type </td>";
			print "<td> $tag </td>";
			print "<td> $cat </td>";
			print "<td><input type=\"checkbox\"  class=\"input-checkbox\" id=\"checkbox$c\" name=\"fav[]\" value=\"$link|$icon\"><label for=\"checkbox$c\" class=\"input-label\"> ADD</label></td>";
			                $c++;

			print "</tr>";
        }
		mysqli_free_result($result);
	  echo " </tbody>
    </table>
    <div class='row uniform'>
      <div class='12u'>
        <ul class='actions align-center'>
          <li>
            <input type='submit' value='Add to Favorites!' />
          </li>
        </ul>
      </div>
    </div>
  </form>
</section> ";
}
?>

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>