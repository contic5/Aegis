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
<h2>View Course Material</h2>
<?php
$coursename=$_GET["coursename"];
$foldername=$coursename;
$truecoursename=str_replace("+"," ",$coursename);
print("<h2>$truecoursename</h2>");
if(isset($_POST["filename"]))
{
  $file = "courses/".$truecoursename."/".$_POST["filename"];
  $downloadfilename=str_replace("+"," ",$file);
  if (file_exists($file))
  {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header("Content-Type: application/force-download");
    header('Content-Disposition: attachment; filename=' . urlencode(basename($downloadfilename)));
    // header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    ob_clean();
    flush();
    readfile($file);
    exit;
  }
}
$query=sprintf("SELECT * FROM CourseMaterial WHERE CourseName='%s'",$coursename);
$result = mysqli_query($conn,$query) or die(mysqli_error($conn));
$rowon=1;
while($row=mysqli_fetch_assoc($result))
{
  print("<table><tbody>");
  $filename=$row["FileName"];
  print("<tr><td>");
  print("<h3>$filename</h3>");
  print("</td></tr>");
  print("<tr><td>");
  print("<form method='post'>");
  print("<input type='hidden' name='filename' value='$filename'>");
  print("<button>Download $filename</button>");
  print("</form>");
  print("</td></tr>");
  if($_SESSION["Usertype"]=="Admin")
  {
    print("<tr><td>");
    print("<form method='post' action='deletefile.php'>");
    print("<input type='hidden' name='filename' value='$filename'>");
    print("<input type='hidden' name='foldername' value='$foldername'>");
    print("<button>Delete $filename</button>");
    print("</form>");
    print("</td></tr>");
  }
  print("</tbody></table>");
  print("<br>");
  $rowon+=1;
}
?>
</body>
</html>
