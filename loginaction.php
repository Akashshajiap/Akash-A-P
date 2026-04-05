<?php
include 'dbconnection.php';
 session_start();

if(isset($_POST['submit']))
{
  $n=$_POST['u'];
  $p=$_POST['p'];
  if($_POST['type']=="PATIENT")
  {
   $a=mysqli_query($con,"SELECT * FROM `patient_registration` WHERE  USERNAME='$n' and PASSWORD='$p'") or die(mysqli_error());
   if($m=mysqli_fetch_array($a))
    {
		$_SESSION['uname']=$m[12];
		 
		 $_SESSION['id']=$m[0];
			     header('location:PATIENT\view_login_P.php');
		 
	} 
	else
	{
	 ?>
	 <script type="text/javascript">
	 alert("Invalid User");
	 window.location.href="login.php";
	 </script>
	 <?php
	  }
 }
	 
  else if($_POST['type']=="DOCTOR") 
  {
	  $b=mysqli_query($con,"SELECT * FROM `doctor_registration` WHERE  USERNAME='$n' and PASSWORD='$p'") or die(mysqli_error());

	if($q=mysqli_fetch_array($b))
	{
	    if($q['STATUS']=="APPROVE")
	      {
		   $_SESSION['id']=$q[0];
		   $_SESSION['name']=$q[12];
		  // $_SESSION['nme']=$q[1];
	       header('location:DOCTOR\view_login_D.php');
		   }
		else
		   {
		    echo "need to approve";
			}
		
	}
	else
	{
	  ?>
	 <script type="text/javascript">
	 alert("Invalid User");
	 window.location.href="login.php";
	 </script>
	 <?php
	  }
	  	 
	 }
	else if($_POST['type']=="ADMIN")
	{
	
	  $c=mysqli_query($con,"SELECT * FROM `admin` WHERE USERNAME='$n' and PASSWORD='$p'") or die(mysqli_error());

	    if($d=mysqli_fetch_array($c))
        {
		  
		  header('location:ADMIN\Admin_login.php');
		}
		else
		 {
		  ?>
	 <script type="text/javascript">
	 alert("Invalid User");
	 window.location.href="login.php";
	 </script>
	 <?php
		  }
       }
	   else
	    {?>
		 <script type="text/javascript">
	 alert("please select type");
	 window.location.href="login.php";
	 </script>
	 <?php
		}
		
	   }
	   
	
 ?>