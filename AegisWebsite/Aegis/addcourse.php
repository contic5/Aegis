<?php require("sessionstart.php");
require("adminauth.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>Aegis Home Page</title>
</head>
<body>
<?php
include("header.php");
include("db.php");
if(isset($_POST["coursename"]))
{
  $coursename=$_POST["coursename"];
  $foldername=strtolower($coursename);
  $foldername=str_replace(" ","_",$foldername);
  $query="SELECT * FROM Courses";
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  $rowcount=mysqli_num_rows($result);
  $query="INSERT INTO Courses(ID,CourseName,FolderName)"."VALUES('$rowcount+1','$coursename','$foldername')";
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  mkdir("/Applications/XAMPP/xamppfiles/htdocs/Aegis/courses/".$foldername);
  print("<p>Course with name $coursename has been created with folder $foldername");
}
?>
<h2>Add Course</h2>
<h3>Enter event info</h3>
<form method="post">
<p>
Enter Course Name:
<input name="coursename" value="New Course" required></input>
</p>
<button type="submit">Submit</button>
</form>
</body>
</html>
