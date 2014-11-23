<!DOCTYPE HTML>
<html>
<head>
<title>Search</title>
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
<?php
include("nav.php");
?>
<!-- Main -->
<section id="main" class="container small">
				<header>
					<h2>Search for a Video</h2>
                    </header>
                    <form method="post" action="search.php">
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
<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; Jeffrey Su. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>