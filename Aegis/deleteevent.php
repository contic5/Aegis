<?php
require("memberauth.php");
?>
<html>
<head>
<script type="text/javascript" src="removewatermark.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
include("header.php");
include("db.php");
if(isset($_GET["ID"]))
{
  $ID=$_GET["ID"];
  $query=sprintf("DELETE FROM Events WHERE ID='%s'",$ID);
  $result=mysqli_query($conn,$query) or die(mysqli_error($conn));
  print("<p>Deleted Event</p>");
}
function sanitize($text)
{
  $text=trim($text);
  $text=stripslashes($text);
  $text=htmlspecialchars($text);
  return $text;
}
?>
</body>
</html>
