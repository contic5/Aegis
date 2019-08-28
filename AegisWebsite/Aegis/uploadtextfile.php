<!DOCTYPE html>
<?php
require("adminauth.php");
require("sessionstart.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<title>Upload Text File</title>
</head>
<body>
  <?php
  include("header.php");
  require("db.php");
  ?>
  <?php
  if(isset($_POST["coursename"]))
  {
    $coursename=$_POST["coursename"];
    $filename=$_FILES["fileToUpload"]["name"];
    $target_dir = "courses/".$coursename."/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $FileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    if($FileType != "pdf"&&$FileType!="doc"&&$FileType!="docx")
    {
        $uploadOk=0;
    }
    if ($uploadOk == 0)
    {
        echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    }
    else
    {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file))
        {
            echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
            $query=sprintf("INSERT INTO CourseMaterial(CourseName,FileName)
            VALUES('%s','%s')",$coursename,$filename);
            $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
        }
        else
        {
            echo "Sorry, there was an error uploading your file.";
        }
    }
  }
  ?>
</body>
</html>
