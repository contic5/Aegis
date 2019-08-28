<?php
require("sessionstart.php");
include("db.php");
?>
<html>
<head>
<title>Create Account</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script type="text/javascript" src="removewatermark.js"></script>
</head>
<body>
<?php
include("header.php");
if(isset($_POST["username"]))
{
  $username=$_POST["username"];
  $password=$_POST["password"];
  $hashedpassword=md5($password);
  $query="SELECT * FROM Accounts";
  $result=mysqli_query($conn,$query) or die(mysqli_error($conn));
  $usernames=[];
  while($row=mysqli_fetch_assoc($result))
  {
    array_push($usernames,$row["Username"]);
  }
  $rowcount=mysqli_num_rows($result);
  $unique=true;
  for($i=0;$i<$rowcount;$i++)
  {
    if($username==$usernames[$i])
    {
      $unique=false;
      break;
    }
  }
  if($unique)
  {
    $query="INSERT INTO Accounts(ID,Username,Password,Usertype)"."VALUES('$rowcount+1','$username','$hashedpassword','Basic')";
    $result=mysqli_query($conn,$query) or die(mysqli_error($conn));
    $_SESSION["Username"]=$username;
    $_SESSION["Usertype"]='Basic';
    header("Location: index.php");
  }
  else
  {
    print("<h3>The selected username is already taken. Use a different username.");
  }
}
?>
<h2>Create Account</h2>
<form method="post">
<p>Username:<input name="username" required></p>
<p>Password:<input name="password" required></p>
<p><button type="submit">Submit</button></p>
<p><a href="login.php">Return to Login</a></p>
</form>
</body>
</html>
