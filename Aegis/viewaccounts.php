<?php
require("adminauth.php");
require("sessionstart.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>View Accounts</title>
</head>
<body>
<?php
include("header.php");
require("db.php");
?>
<h2>View Accounts</h2>
<?php
$query="SELECT * FROM Accounts";
$result = mysqli_query($conn,$query) or die(mysqli_error($conn));
while($row=mysqli_fetch_assoc($result))
{
  $username=$row["Username"];
  print("<table><tbody>");
  print("<tr><td> User: ".$username."</td></tr>");
  print("<tr><td> Usertype:".$row["Usertype"]." </td></tr>");
  print("<tr><td>");
  print("<form method='get' action='editaccount.php'>");
  print("<input type='hidden' name='Username' value='$username'>");
  print("<button>Edit</button>");
  print("</form>");
  print("</td></tr>");
  print("</tbody></table>");
  print("<br>");
}
?>
</body>
</html>
