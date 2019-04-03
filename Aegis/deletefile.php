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
if(isset($_POST["filename"]))
{
  $filename=$_POST["filename"];
  $foldername=$_POST["foldername"];
  $file = "courses/".$_POST["foldername"]."/".$_POST["filename"];
  print("Deleting ".$file."<br>");
  print("Filename=$filename <br>Foldername=$foldername<br>");
  if (file_exists($file))
  {
      print("Fired<br>");
      unlink($file);
      $query=sprintf("DELETE FROM CourseMaterial WHERE Filename='%s' AND CourseName='%s'",$filename,$foldername);
      $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
      print("<form id='returnform' method='get' action='viewspecificcourse'>");
      print("<input type='hidden' value='$foldername'");
      print("</form>");
      ?>
      <script type="text/javascript">
        document.getElementById('returnform').submit(); // SUBMIT FORM
      </script>
      <?php
  }
  else
  {
    print("File does not exist<br>");
  }
}
?>
</body>
</html>
