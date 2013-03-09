<?
include("CAS.php");
phpCAS::client(CAS_VERSION_2_0,"login.iiit.ac.in",443,"/cas");
phpCAS::setNoCasServerValidation();
phpCAS::setExtraCurlOption(CURLOPT_SSLVERSION,1);
phpCAS::forceAuthentication();
        $i=0;
        $complete_user=phpCAS::getuser();

        while($complete_user[$i]!='@')
                $i++;
        $user_name=substr($complete_user,0,$i);
	$_SESSION['user']=$user_name;
	$con=mysql_connect();
	mysql_select_db("test",$con);
	$result=mysql_query("select admin_id from admin where admin_id='$complete_user'");
	$a=mysql_fetch_array($result);	
	$_SESSION['admin_id']=$a['admin_id'];
?>	
<html>
<!--body background="bg.jpg"-->
<link rel="stylesheet" type="text/css" href="menu.css">

<div>
<? include('menu.php')?>
</div>

<br>
<div style="position:relative;width:100%;height:85%;overflow-x:hidden;overflow:auto;">

<div>
<div style="position:relative;float:right;width:55%;top:15px;">
<center>

<? if($_SESSION['admin_id'])
{
?>
<div class="newsholder">
<a href="./Housekeeping/unit_testing/" style="color:white;text-decoration:none">House Keeping</a>
</div>
<br>
<div class="newsholder">
<a href="personal_form/Housekeeping/unit_testing/" style="color:white;text-decoration:none">Students Data</a>
</div>
<br>
<div class="newsholder">
<a href="log/log.php" style="color:white;text-decoration:none">Download Logs</a>
</div>
<br>
<br>
<?
}
?>

<div>
<?include('newsfeed.php')?>
</div>
</center>
</div>

<div style="position:relative;top:15px;width:45%;">
<!--strong><center> Complaints </center></strong-->
<div class="newsholder" style="width:100%">
Recent Complaints
</div>
<div>
<? include('frame2_complaints/mainadmin.php')?>
</div>
</div>

</div>

<div>
<br>
<br>
<div style="position:relative;bottom:0px;width:100%;background-color:#0060a7;color:#ffffff;">
<center>
BAKUL HOSTEL PORTAL
&nbsp
<a href="contact_us.php" style="text-decoration:none;color:white" >CONTACT US</a>
</center>
</div>
</div>
</div>
</html>
