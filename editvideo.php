<?php 
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
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
    <h2>Video Edit Form</h2>
    <p>Edit a fun video to the database!</p>
  </header>
  <div class="box">
    <form method=post action="editentry.php">
      <div class="row uniform half">
        <div class="12u">
          <input type="text" name="title" placeholder="Video Title" />
        </div>
      </div>
      <div class="row uniform half">
        <div class="12u">
          <input type="text" name="link" placeholder="Video URL" />
        </div>
      </div>
      <div class="row uniform half collapse-at-2">
        <div class="6u">
          <input type="text" name="length" placeholder="Video Length" />
        </div>
        <div class="6u">
          <input type="text" name="HighRes" placeholder="Video Highest Resolution" />
        </div>
      </div>
      <div class="row uniform half">
        <div class="12u">
          <textarea name="desc" placeholder="Video Description" rows="4"></textarea>
        </div>
      </div>
      <div class="row uniform half collapse-at-2">
        <div class="6u">
          <select name="lang">
            <option>Language</option>
            <option>English</option>
            <option>Non-English</option>
          </select>
        </div>
        <div class="6u">
          <input type="text" name="count" placeholder="View Count" />
        </div>
      </div>
      <div class="row uniform half collapse-at-2">
        <div class="6u">
          <select name="type" multiple>
            <option>Video Type</option>
            <option>Tutorial</option>
            <option>Entertainment</option>
            <option>Application</option>
            <option>Weapon</option>
            <option>Group demo</option>
            <option>Others</option>
          </select>
        </div>
        <div class="6u">
          <input type="text" name="icon" placeholder="Link to Video Icon Image" />
        </div>
      </div>
      <div class="row uniform half">
        <div class="12u">
          <input type="text" name="tag" placeholder="Video Tags" />
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

<!-- Footer -->
<footer id="footer">
  <ul class="copyright">
    <li>&copy; CS174. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>