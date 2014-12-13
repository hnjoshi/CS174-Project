<?php
ini_set('session.gc_maxlifetime', 1800);
	session_set_cookie_params(1800);
	session_start();
	include("dbconnect.php");
	
	if(isset($_SESSION['uID']))
	{
		header("user.php");
	}
	
	if(isset($_POST['name']))
	{
		$name = $_POST['name'];
		$email = $_POST['email'];
		$_SESSION['uID'] = $email;
		$_SESSION['type'] = "User";
		$phone = $_POST['phone'];
		$pass = $_POST['password'];
		$age = $_POST['age'];
		
		$query = "INSERT INTO user "
                ." (`email`, `password`, `name`) VALUES "
                ."('$email', '$pass', '$name')";
		mysqli_query($conn, $query);
		header("Location:user.php");
	}
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
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
<script type="text/javascript">

  function checkForm(form)
  {
    if(form.password.value != "" && form.password.value == form.repassword.value) {
      if(form.password.value.length < 8) {
        alert("Error: Password must contain at least eight characters!");
        form.password.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        form.password.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.password.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.password.focus();
        return false;
      }
    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.password.focus();
      return false;
    }

    alert("Welcome to Fun Video " + form.username.value);
    return true;
  }

</script>

</head>
<body>

<?php include('nav.php'); ?>

<!-- Main -->
        <section id="main" class="container small">
            <header>
                <h2>Register for a Fun Video Account</h2>
                <p>Upon registration you will be able favorite videos! </p>
            </header>
            <div class="box">
                <form method="post" onsubmit="return checkForm(this);" action="register.php">
                    <div class="row uniform half collapse-at-2">
                        <div class="12u">
                            <input id="name" name="name" placeholder="Name" required="" tabindex="1" type="text" required>
                        </div>
                    </div>
                    <div class="row uniform half collapse-at-2">
                        <div class="12u">
                           <input type="email" name="email" id="email" value="" placeholder="Email Address" required>
                        </div>
                    </div>
                    <div class="row uniform half collapse-at-2">
                        <div class="6u">
                            <input type="password" id="password" name="password" required="" placeholder="Password" required>
                        </div>
                        <div class="6u">
                            <input type="password" id="repassword" name="repassword" required="" placeholder="Verify Your Password" required>
                        </div>
                    </div>
                    <div class="row uniform">
                        <div class="12u">
                            <ul class="actions align-center">
                                <input class="buttom" name="submit" id="submit" tabindex="5" value="Submit" type="submit">
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
