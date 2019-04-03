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
<h2>View Events</h2>
<?php
$username=$_SESSION["Username"];
$query="SELECT * FROM Events WHERE Username='$username' ORDER BY EventDate ASC";
$result = mysqli_query($conn,$query) or die(mysqli_error($conn));
while($row=mysqli_fetch_assoc($result))
{
  $ID=$row["ID"];
  print("<table><tbody>");
  print("<tr><td> Username: ".$row["Username"]."</td></tr>");
  print("<tr><td> Name:".$row["Name"]." </td></tr>");
  print("<tr><td> EventDate: ".$row["EventDate"]."</td></tr>");
  print("<tr><td> EventTIme:".$row["EventTime"]." </td></tr>");
  print("<tr><td> RepetitionRate: ");
  $repetitionrate=$row["RepetitionRate"];
  if($repetitionrate==0)
  {
    print("Never");
  }
  else if($repetitioncount==1)
  {
    print("Daily");
  }
  else if($repetitioncount==7)
  {
    print("Weekly");
  }
  else if($repetitioncount==14)
  {
    print("Every Two Weeks");
  }
  else if($repetitioncount==28)
  {
    print("Every Four Weeks");
  }
  print(" </td></tr>");
  print("<tr><td> RepetitionCount: ");
  $repetitioncount=$row["RepetitionCount"];
  if($repetitioncount==0)
  {
    print("Never");
  }
  else
  {
    print($repetitioncount);
  }
  print(" </td></tr>");
  print("<tr><td>");
  print("<form method='get' action='editevent.php'>");
  print("<input type='hidden' name='ID' value='$ID'>");
  print("<button>Edit Event</button>");
  print("</form>");
  print("</td></tr>");
  print("<tr><td>");
  print("<form method='get' action='deleteevent.php'>");
  print("<input type='hidden' name='ID' value='$ID'>");
  print("<button>Delete Event</button>");
  print("</form>");
  print("</td></tr>");
  print("</tbody></table>");
  print("<br>");
}
?>
</body>
</html>
