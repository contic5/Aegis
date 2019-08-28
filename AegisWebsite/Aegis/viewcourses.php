<?php
require("memberauth.php");
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
<h2>View Courses</h2>
<?php
$query="SELECT * FROM Courses";
$result = mysqli_query($conn,$query) or die(mysqli_error($conn));
$rowon=1;
while($row=mysqli_fetch_assoc($result))
{
  $coursename=$row["CourseName"];
  print("<table><tbody>");
  print("<tr><td> Course: ".$rowon."</td></tr>");
  print("<tr><td>");
  print("<form method='get' action='viewspecificcourse.php'>");
  print("<input type='hidden' name='coursename' value='$coursename'>");
  print("<button type='submit'>Enter ".$coursename."</button>");
  print("</form>");
  print("</td></tr>");
  if($_SESSION["Usertype"]=="Admin")
  {
    print("<tr><td>");
    print("<form method='post' action='deletecourse.php'>");
    print("<input type='hidden' name='coursename' value='$coursename'>");
    print("<button type='submit'>Delete ".$coursename."</button>");
    print("</td></tr>");
    print("</form>");
  }
  print("</tbody></table>");
  print("<br>");
  $rowon+=1;
}
?>
</body>
</html>
