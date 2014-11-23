<?php
	session_start();
	include("dbconnect.php");
	
	if(isset($_SESSION['uID']))
	{
		header("user.php");
	}
	
	if(isset($_POST['name']))
	{
		$name = $_POST['name'];
		$uID = $_POST['uID'];
		$_SESSION['uID'] = $uID;
		$email = $_POST['email'];
		$phone = $_POST['phone'];
		$pass = $_POST['password'];
		$age = $_POST['age'];
		
		$query = "INSERT INTO user "
                ." (`uID`, `password`, `name`, `age`, `email`, `phoneNumber`) VALUES "
                ."('$uID', '$pass', '$name', '$age', '$email', '$phone')";
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
                <form method="post" action="register.php">
                    <div class="row uniform half collapse-at-2">
                        <div class="6u">
                            <input id="name" name="name" placeholder="Name" required="" tabindex="1" type="text" required>
                        </div>
                        <div class="6u">
                            <input id="name" name="uID" placeholder="Username" required="" tabindex="1" type="text" required>
                        </div>
                    </div>
                    <div class="row uniform half collapse-at-2">
                        <div class="6u">
                            <input name="age" placeholder="Age" required min="15" type="text">
                        </div>
                        <div class="6u">
                            <input id="phone" name="phone" placeholder="Phone Number" required type="text" required>
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
                    <div class="row uniform half collapse-at-2">
                        <div class="12u">
                           <input type="email" name="email" id="email" value="" placeholder="Email Address" required>
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
    <li>&copy; Code Monkeys. All rights reserved.</li>
  </ul>
</footer>
</body>
</html>
