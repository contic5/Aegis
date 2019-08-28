<?php require("sessionstart.php");?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<title>Header</title>
</head>
<body>
<h1>Aegis</h1>
<?php
//Only shows admin functions if usertype is admin
if(isset($_SESSION["Usertype"])&&$_SESSION["Usertype"]=="Admin")
{
  print("<p>Admin Functions</p>");
  print("
  <table><tbody><tr>
  <td><a href='approveaccount.php'>Approve Account</a></td>
  <td><a href='viewaccounts.php'>View Accounts</a></td>
  <td><a href='fileuploadform.php'>Upload File</a></td>
  <td><a href='addcourse.php'>Add Course</a></td>
  </tr></tbody></table>
    ");
  print("<br>");
  print("<p>User Functions</p>");
}
?>
<table><tbody><tr>
<td><a href="index.php">Home</a></td>
<td><a href="createaccount.php">Create Account</a></td>
<td><a href="addevent.php">Add Event</a></td>
<td><a href="viewevents.php">View Events</a></td>
<td><a href="viewcourses.php">View Courses</a></td>
<td><a href="login.php">Login</a></td>
<td><a href="logout.php">Logout</a></td>
</tr></tbody></table>
<?php
//Greets user by username if logged in. Otherwise, welcomes guest.
if(isset($_SESSION["Username"]))
{
  print("<h3>Hello ".$_SESSION["Username"].".</h3>");
  print("<p>Account Type: ".$_SESSION["Usertype"]."</p>");
}
else
{
  print("<h3>Hello Guest.</h3>");
  print("<h3>Log In to access all features.</h3>");
}
?>
</body>
</html>
