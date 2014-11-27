<?php
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Search Results</title>
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
include("dbconnect.php"); 
$ser= $_POST['search'];
$query = "Select videolink, title, videolength, highestresolution, description,language, viewcount, videotype, iconimage, tag  from fun_video where title like '%$ser%' || description like '%$ser%' || tag like '%$ser%' ";
$result = mysqli_query($conn, $query);
include("nav.php");
?>
<!-- Main -->
<section id="main" class="container small">
  <header>
    <h2>Search Results</h2>
  </header>
</section>
<section id="main" class="container large">
  <form action="get_videos.php" method=post>
  <table id="results" class="display" cellspacing="0" width="100%">
    <thead>
      <tr>
        <th>Video Link</th>
        <th>Video Title</a></th>
        <th>Video Length</a></th>
        <th>Highest Resolution</a></th>
        <th>Video Description</a></th>
        <th>Language</a></th>
        <th>View Count</a></th>
        <th>Video Type</a></th>
        <th>Tag</a></th>
        <th>ADD TO FAVORITES</th>

      </tr>
    </thead>
    <tbody>
      <?php
	            $c = 1;

	  while (list($link, $title, $length, $res, $desc, $lang, $count, $type, $icon, $tag) = mysqli_fetch_array($result))
        {
			print "<tr>";
			echo "<td><a href=\"$link\" target=\"_blank\"> <img src=\"$icon\" width=\"100\" height=\"100\"></a> </td>";
			print "<td> $title </td>";
			print "<td> $length </td>";
			print "<td> $res </td>";
			print "<td> $desc </td>";
			print "<td> $lang </td>";
			print "<td> $count </td>";
			print "<td> $type </td>";
			print "<td> $tag </td>";
			print "<td><input type=\"checkbox\"  class=\"input-checkbox\" id=\"checkbox$c\" name=\"fav[]\" value=\"$link|$icon\"><label for=\"checkbox$c\" class=\"input-label\"> ADD</label></td>";
			                $c++;

			print "</tr>";
        }
		mysqli_free_result($result);
	  ?>
    </tbody>
  </table>
            <div class="row uniform">
            <div class="12u">
              <ul class="actions align-center">
                <li>
                  <input type="submit" value="Add to Favorites!" />
                </li>
              </ul>
            </div>
          </div>
  </form>
</section>
<section id="main" class="container small">
  <form method="post" action="searchresults.php">
    <div class="row uniform half collapse-at-2">
      <div class="8u">
        <input type="text" name="search" id="text" />
      </div>
      <div class="4u">
        <input type="submit" value="Search Again" class="fit" />
      </div>
    </div>
  </form>
</section>

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>