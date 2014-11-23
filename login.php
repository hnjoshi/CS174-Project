<?php
	session_start();
	if(isset($_POST["username"]))
	{ 
	$username = $_POST['username'];
	$password = $_POST['password'];
	$message = "";
	include("dbconnect.php");
	$query = "SELECT uID FROM user WHERE uID='" . $_POST["username"] . "' and password = '". $_POST["password"]."'";
	$result = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($result);
	if(is_array($row)) {
	$_SESSION["uID"] = $row[uID];
	header("Location:user.php");
	} 
	if(!is_array($row)) 
	{
		$message = "Invalid Username or Password!";
	}
	}
	if(isset($_SESSION["uID"])) 
	{
		
	  header("Location:user.php");		
	}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
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
<body>

<?php include('nav.php'); ?>

<!-- Main -->
<section id="main" class="container small">
  <header>
    <h2>Login to Fun Video Site</h2>
  </header>
  <div class="box">
    <form method=post action="login.php">
      <div class="row uniform half collapse-at-2">
        <div class="6u">
          <input type="text" name="username" placeholder="Username" />
        </div>
        <div class="6u">
          <input type="password" name="password" placeholder="Password" />
          <label><input type="checkbox" name="remember" value="1">Remember Me </label>
        </div>
      </div>
      <div class="message">
        <?php if($message!="") { echo $message; } ?>
        
      </div>
      <div class="row uniform">
        <div class="12u">
          <ul class="actions align-center">
            <li>
              <input type="submit" value="Login" />
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
