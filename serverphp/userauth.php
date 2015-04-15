<?php
include 'dbconfig.php';
if (!$conn)
{
    die("Connection failed: " . mysqli_connect_error());
}
$get_username = $_POST["name"];
$get_pwd = $_POST["password"];
$sql = "SELECT Id, password FROM users WHERE username = '$get_username'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) > 0)
{
    while($row = mysqli_fetch_assoc($result))
    {
        if($row["password"] == $get_pwd)
        {
        	$outdata = array("isadmin"=>"true","name"=>$get_username);
        	echo json_encode($outdata);
        	break;
        }
    }
} 
mysqli_close($conn);
?>