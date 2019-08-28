<?php
require("sessionstart.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>Aegis Home Page</title>
</head>
<body>
<?php
require("adminauth.php");
require("db.php");
include("header.php");
if(isset($_POST["coursename"]))
{
  $foldername=$_POST["coursename"];
  $folder = "courses/".$_POST["coursename"];
  print("Deleting ".$folder."<br>");
  if (file_exists($folder))
  {
    //Get a list of all of the file names in the folder.
    $files = glob($folder . '/*');

    //Loop through the file list.
    foreach($files as $file)
    {
      //Make sure that this is a file and not a directory.
        if(is_file($file))
        {
          unlink($file);
        }
    }
    print("Fired<br>");
    rmdir($folder);
    $query=sprintf("DELETE FROM CourseMaterial WHERE CourseName='%s'",$foldername);
    $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
    $query=sprintf("DELETE FROM Courses WHERE CourseName='%s'",$foldername);
    $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
    #header("Location: viewcourses.php");
  }
  else
  {
    print("Course does not exist<br>");
  }
}
?>
</body>
</html>
