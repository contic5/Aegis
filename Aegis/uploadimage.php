<!DOCTYPE html>
<?php
require("adminauth.php");
require("sessionstart.php");
?>
<html>
<body>
  <?php
  include("header.php");
  require("db.php");
  if(isset($_POST["coursename"]))
  {
    $coursename=$_POST["coursename"];
    $filename=$_FILES["fileToUpload"]["name"];
    $target_dir = "courses/".$coursename."/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    if(isset($_POST["submit"]))
    {
        $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
        if($check !== false) {
            echo "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            echo "File is not an image.";
            $uploadOk = 0;
        }
    }
    if ($uploadOk == 0)
    {
        echo "Sorry, your file was not uploaded.";
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
