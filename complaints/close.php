<?php

include('menu.php');
echo "<br /><br />";

$con = mysql_connect();
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
  $id=$_GET["idd"];
mysql_select_db("test", $con);
$var=date('Y-m-d',time());
$var1=date('H:i:s',time());
$result = mysql_query("Update complaints set status='True', date_resolved='$var',time_resolved='$var1'  where complain_id='$id'");


$i=0;
$complete_user=phpCAS::getuser();
while($complete_user[$i]!='@')
	$i++;
$user=substr($complete_user,0,$i);


$filename = "complaints_log.txt";
$file_pointer = fopen($filename, "a");
fwrite($file_pointer, date('M d, H:i:s')." RESOLVE: $user resolved complaint with id $id.\n");
fclose($filename);

mysql_close($con);
//echo 'complaint closed';
//echo $_SESSION['uu'];

$flag=$_SESSION['flag'];
if($flag==2)
    header("location: mainadmin.php");
else
    header("location: mainuser.php");

?>
