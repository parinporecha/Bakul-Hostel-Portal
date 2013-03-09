<?php
$con=mysql_connect();
mysql_select_db("test", $con);
function isValidEmail($email)
{
    return preg_match("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$^", $email);
}
$id=$_POST['id'];
$name=$_POST['name'];

$bdate=$_POST['bdate'];
$sex=$_POST['sex'];
$responsibility=$_POST['responsibility'];
$job=$_POST['job'];

$address=$_POST['address'];
$contact_no=$_POST['contact_no'];

//echo isset($fname).!empty($fname).isset($lname).!empty($lname).isset($street).!empty($street).isset($zip).isset($state).!empty($state).isset($country).!empty($country).isset($email_address).!empty($email_address).isset($contact_cell).!empty($contact_cell);
//echo "here<br />";

if
(
isset($id) and !empty($id) and
isset($name) and !empty($name) and
isset($bdate) and
isset($sex) and
isset($responsibility) and
isset($job) and
isset($address) and
isset($contact_no) 
)
{
mysql_query("INSERT INTO staff VALUES ('$id','$name','$bdate','$sex','$responsibility','$job','$address','$contact_no')");
//mysql_query("INSERT INTO students VALUES (201101111,'majh','n','NULL','jl','dd','f','fbaddress','325325','nkll','3525')");
header('location: ../index.php');
}
else
{
	Echo "<html>";
	Echo "<body>";
	echo "Fill all the values and a valid email address<br />";
	$url="index.php";
	echo "<a href=$url>Go back to form</a><br />";
	$url="../index.php";	
	echo "<a href=$url>Go back to home page</a><br />";
	echo "</body>";
	echo "</html>";

}
?>
