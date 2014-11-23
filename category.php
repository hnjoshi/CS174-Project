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
$ser= $_GET['value'];
$query = "Select videolink, title, videolength, highestresolution, description,language, viewcount, videotype, iconimage, tag  from fun_video where $ser";
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
      </tr>
    </thead>
    <tbody>
      <?php
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
			print "</tr>";
        }
		mysqli_free_result($result);
	  ?>
    </tbody>
  </table>
</section>


<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; Jeffrey Su. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>