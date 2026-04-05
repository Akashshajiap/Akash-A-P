<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Smart Health Prediction</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Medi Plus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="medi_plus-web_Free03-01-2017_869291191/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="medi_plus-web_Free03-01-2017_869291191/web/css/style.css" type="text/css" rel="stylesheet" media="all">
<link href="medi_plus-web_Free03-01-2017_869291191/web/css/component.css" rel="stylesheet" type="text/css"  />
<link href="medi_plus-web_Free03-01-2017_869291191/web/css/font-awesome.css" rel="stylesheet"> 			<!-- font-awesome icons -->
<!-- //Custom Theme files -->
<!-- js -->
<script src="medi_plus-web_Free03-01-2017_869291191/web/js/jquery-1.11.1.min.js"></script> 
<script src="medi_plus-web_Free03-01-2017_869291191/web/js/modernizr.custom.js"></script>
<!-- //js -->
<!-- web fonts -->
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<!-- //web fonts -->
</head>
<body class="cbp-spmenu-push">
	<!-- banner -->
	<div class="banner abt-bnr">
		<!-- header -->		
		<div class="w3ls-header">
			<div class="container">	
				<div class="agile-logo">
					<h1><a href="#">Smart Health Prediction</a></h1>
				</div>
				<div class="top-nav">
					<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
						<h3>Menu</h3>
						<a href="index.php" >Home</a>
						<a href="about.php">About us</a>
						<a href="login.php">Sign In</a> 
						<a href="#" class="menu-icon">Sign Up <i class="fa fa-sort-down"></i></a>
							<ul class="nav1">
								<li><a href="DOCTOR/doctor_registration.php">Doctor</a></li>
								<li><a href="PATIENT/patient_registration.php">Patient</a></li> 
							</ul> 	 
						<a href="contact.php" class="active">Contact Us</a>
					</nav>  
					<div class="main buttonset">	
						<!-- Class "cbp-spmenu-open" gets applied to menu and "cbp-spmenu-push-toleft" or "cbp-spmenu-push-toright" to the body -->
						<button id="showRightPush"><img src="medi_plus-web_Free03-01-2017_869291191/web/images/menu-icon.png" alt=""/></button>
						<!-- <span class="menu"></span> -->
					</div>
					<!-- script-for-drop down -->
					<script>
						$( "a.menu-icon" ).click(function() { 
							$( "ul.nav1" ).slideToggle( 300, function() {
								// Animation complete.
							});
						});
					</script>
					<!-- //script-for-dropdown --> 
					<!-- Classie - class helper functions by @desandro https://github.com/desandro/classie -->
					<script src="medi_plus-web_Free03-01-2017_869291191/web/js/classie.js"></script>
					<script>
						var menuRight = document.getElementById( 'cbp-spmenu-s2' ),
						showRightPush = document.getElementById( 'showRightPush' ),
						body = document.body;

						showRightPush.onclick = function() {
							classie.toggle( this, 'active' );
							classie.toggle( body, 'cbp-spmenu-push-toleft' );
							classie.toggle( menuRight, 'cbp-spmenu-open' );
							disableOther( 'showRightPush' );
						};

						function disableOther( button ) {
							if( button !== 'showRightPush' ) {
								classie.toggle( showRightPush, 'disabled' );
							}
						}
					</script>
					<!-- /script-for-menu -->
				</div>	
			</div>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.php">Home</a></li>
				<li class="breadcrumb-item active">Contact Us</li>
			</ol>
		</div>
		<!-- //header -->  
	</div>
	<!-- //banner --> 
	<!-- contact -->
	<div class="contact">
		<div class="container">				
			<div class="contact-grids">
				<div class="col-md-8 map">
					<h3>How to find us</h3>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d158858.182370726!2d-0.10159865000000001!3d51.52864165!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8a00baf21de75%3A0x52963a5addd52a99!2sLondon%2C+UK!5e0!3m2!1sen!2sin!4v1433744055746"></iframe>
				</div>
				<div class="col-md-4 address" >
					<h3>Contact info</h3>
					<p class="cnt-p" ></p>
					<p style="margin-left:100px">Smrithi Raj v</p>
					<p style="margin-left:100px">MCA,FISAT</p>
					<p style="margin-left:100px">Angamali,Eranakulam</p>
					<p style="margin-left:100px">Telephone : 9998155362</p>
					<p style="margin-left:100px">Email : <a href="#">smrithirajvnls@gmail.com</a></p>
				</div>									
				<div class="clearfix"> </div>	
			</div>
			<div class="contact-form">
				<h3>Contact form</h3>
				<form  method="post">
					<div class="col-md-6 col-sm-6 form-grids">
						<input type="text" name="nm" placeholder="Name" required=""> 
						<input type="email" name="em" placeholder="Email" required="">
						<input type="text" name="tp" placeholder="Telephone" required=""><br> <br>
						<input type="text" name="sb" placeholder="Subject" required=""> 
					</div>
					<div class="col-md-6 col-sm-6 form-grids">
						<textarea name="msg" placeholder="Message" required=""></textarea>
						<button class="btn btn-1 btn-1d" name="SUBMIT"> SUBMIT </button>
					</div>
					<div class="clearfix"> </div>					
				</form>
			</div>
		</div>		
	</div>
	<!--//contact-->
	<!-- footer -->
	<div class="footer-bottom">
		<div class="container">
			<div class="footer-left">
				<p>© 2023 Smart Health Prediction . All rights reserved </p>		
			</div>
			<div class="footer-right">
				<ul class="w3-agileitsicons">
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a class="twt" href="#"><i class="fa fa-twitter" aria-hidden="true"></i> </a></li>
					<li><a class="drbl" href="#"><i class="fa fa-linkedin" aria-hidden="true"></i> </a></li>
					<li><a class="be" href="#"><i class="fa fa-dribbble" aria-hidden="true"></i> </a></li>
				</ul>
			</div>
			<script>$(function () {
			  $('[data-toggle="tooltip"]').tooltip()
			})</script>
		</div>
	</div>
	<!-- //footer --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="medi_plus-web_Free03-01-2017_869291191/web/js/bootstrap.js"> </script>
</body>
</html>


<?php
if(isset($_POST['SUBMIT']))
{
 
include 'Email Sending Using PHP mailer/PHPMailer-master/PHPMailer-master/PHPMailerAutoload.php';

$mail = new PHPMailer;



//Enable SMTP debugging. 
$mail->SMTPDebug = 3;                               
//Set PHPMailer to use SMTP.
$mail->isSMTP();            
//Set SMTP host name                          
$mail->Host = "smtp.gmail.com";
//Set this to true if SMTP host requires authentication to send email
$mail->SMTPAuth = true;                          
//Provide username and password     

$mail->Username = "smrithirajvnls@gmail.com";                 
$mail->Password = "malu1995"; 
                          
//If SMTP requires TLS encryption then set it
$mail->SMTPSecure = "tls";                           
//Set TCP port to connect to 
$mail->Port = 587;                                   
$mail->From = $_POST['em'];//sender _mail_id
$mail->FromName = $_POST['nm'];

$mail->addAddress("smrithirajvnls@gmail.com", "Smrithi Raj v");//Recepient Mail id and name
$mail->isHTML(true);

$mail->Subject = $_POST['sb'];
$mail->Body = $_POST['msg']."Contact No:".$_POST['tp'];
//$mail->AltBody = "This is the plain text version of the email content";

if(!$mail->send()) 
{
    echo "Mailer Error: " . $mail->ErrorInfo;
} 
else 
{
    echo "Message has been sent successfully";
}
}
?>
