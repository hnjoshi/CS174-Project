<?php
	ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();

	if(isset($_POST["email"]))
	{ 
	$email = $_POST['email'];
	$password = $_POST['password'];
	include("dbconnect.php");
	$query = "SELECT email, type FROM user WHERE email='" . $_POST["email"] . "' and password = '". $_POST["password"]."'";
	$result = mysqli_query($conn, $query);
	$row = mysqli_fetch_array($result);
	if(is_array($row)) {
	$_SESSION["uID"] = $row['email'];
	$_SESSION["type"] = $row['type'];
	  if(isset($_POST['remember']))
	  {
		  $min = time() + 60;
		  setcookie('remember_me', $_POST['email'], $min);
		  setcookie('type', $row['type'], $min);
	  }
	header("Location:user.php");
	} 
	if(!is_array($row)) 
	{
		$message = "Invalid Email Address or Password!";
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
      	
        <?php 
			if(isset($_SESSION['notloggedin'])) {
				
				$not_loggedin_message = $_SESSION['notloggedin'];
				print "<h1>$not_loggedin_message</h1>";
			}	
		 ?>
        
        <div class="6u">
          <input type="text" name="email" placeholder="Email Address" />
        </div>
        <div class="6u">
          <input type="password" name="password" placeholder="Password" />
        </div>
      </div>
      <div class="message">
        <?php if(isset($message)) { echo $message; } ?>
      </div>
      <br>
      <div class="row uniform">
      <div class="12u">
      <ul class="actions align-center">
            <li>
              <input type="checkbox" class="input-checkbox" id= "checkbox1" name="remember" value="1">
       		<label for="checkbox1" class="input-label"> Remember me!</label>
            </li>
          </ul>    
      </div>
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
