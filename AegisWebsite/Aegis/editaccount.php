<?php
require("adminauth.php");
require("sessionstart.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>Approve Account</title>
</head>
<body>
<?php
include("header.php");
require("db.php");
?>
<h2>Approve Accounts</h2>
<?php
if(isset($_POST["Usertype"]))
{
  $usertype=$_POST["Usertype"];
  $selecteduser=$_POST["Selecteduser"];
  $query="UPDATE Accounts SET Usertype='$usertype' WHERE Username='$selecteduser'";
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  print("<p>".$selecteduser." set as ".$usertype);
}
if(isset($_GET["Username"]))
{
  $username=$_GET["Username"];
  $query="SELECT * FROM Accounts WHERE Username='$username'";
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  while($row=mysqli_fetch_assoc($result))
  {
    $usertype=$row["Usertype"];
    if($usertype=="Admin")
    {
      print("<p>An admin account type cannot directly be edited.</p>");
    }
    else
    {
      print("<form method='post'>");
      print("<p>".$row["Username"]."</p>");
      print("<input type='hidden' name='Selecteduser' value='".$row["Username"]."'>");
      print("<select name='Usertype'>");
      print("
      <option value='Participant'>Participant</option>
      <option value='JobCoach'>Job Coach</option>
      <option value='PartnerEmployee'>PartnerEmployee</option>
      ");
      print("</select>");
      print("<p><button type='submit'>Submit</button>");
      print("</form>");
    }
  }
}
?>
</body>
</html>
