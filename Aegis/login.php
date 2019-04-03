<?php
require("sessionstart.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<script type="text/javascript" src="removewatermark.js"></script>
<title>Open Captioning Login</title>
</head>
<body>
<?php
include("header.php");
require("db.php");
if(isset($_POST["Username"])&&isset($_POST["Password"]))
{
  $username=$_POST["Username"];
  $password=$_POST["Password"];
  $hashedpassword=md5($password);
  $query=sprintf("SELECT * FROM Accounts WHERE Username='%s' AND Password='%s'",$username,$hashedpassword);
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  $usertype="";
  while($row=mysqli_fetch_assoc($result))
  {
    $usertype=$row["Usertype"];
  }
  $rows = mysqli_num_rows($result);
  print("<p>".$rows."</p>");
  if($rows==1)
  {
    $_SESSION["Username"]=$username;
    $_SESSION["Password"]=$password;
    $_SESSION["Usertype"]=$usertype;
    header("Location: index.php");
  }
}
function sanitize($text)
{
  $text=trim($text);
  $text=stripslashes($text);
  $text=htmlspecialchars($text);
  return $text;
}
?>
<h2>Login</h2>
<form method="post">
<p>Username:<input name="Username" type="text"></p>
<p>Password:<input name="Password" type="password"></p>
<p><button onclick="submit">Log In</button></p>
<p><a href="createaccount.php">Create Account</a></p>
</form>
</body>
</html>
