<!DOCTYPE html>
<?php
require("adminauth.php");
require("sessionstart.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<title>File Upload Form</title>
</head>
<body>
<?php
include("header.php");
?>
<h3>Upload Image</h3>
<form action="uploadimage.php" method="post" enctype="multipart/form-data">
    <p>Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload"></p>
    <p>Enter Coursename:<input name='coursename' required></p>
    <p><input type="submit" value="Upload Image" name="submit"></p>
</form>
<br>
<h3>Upload Text File</h3>
<form action="uploadtextfile.php" method="post" enctype="multipart/form-data">
    <p>Select text file to upload(pdf,doc,docx):
    <input type="file" name="fileToUpload" id="fileToUpload"></p>
    <p>Enter Coursename:<input name='coursename' required></p>
    <p><input type="submit" value="Upload Text File" name="submit"></p>
</form>
</body>
</html>
