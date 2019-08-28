<?php require("sessionstart.php");
require("db.php");
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<title>Aegis Home Page</title>
</head>
<body>
<?php
require("memberauth.php");
include("header.php");
?>
<?php
$ID=$_GET["ID"];
$query="SELECT * FROM Events WHERE ID='$ID'";
$result=mysqli_query($conn,$query) or die(mysqli_error($conn));
$name;
$date;
$time;
$repetitionrate;
$repetitioncount;
while($row=mysqli_fetch_assoc($result))
{
  print("<p>Go</p>");
  $name=$row["Name"];
  $date=$row["EventDate"];
  $time=$row["EventTime"];
  $repetitionrate=$row["RepetitionRate"];
  $repetitioncount=$row["RepetitionCount"];
}
print($date);
if(isset($_POST["date"]))
{
  $username=$_SESSION["username"];
  $name=$_POST["name"];
  $date=$_POST["date"];
  $time=$_POST["time"];
  $repetitionrate=$_POST["repetitionrate"];
  $repititioncount=$_POST["repetitioncount"];
  $query=sprintf("UPDATE Events SET Username='%s',Name='%s',EventDate='%s',
EventTime='%s',RepetitionRate='%s',RepetitionCount='%s'"."WHERE ID='%d'",
  $username,$name,$date,$time,$repetitionrate,$repititioncount,$ID);
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  print("<h3>Event Updated</h3>");
}
?>
<h2>Edit Event</h2>
<h3>Enter event info</h3>
<form method="post">
<p>
Enter Event Name:
<input name="name" value="<?php print($name);?>" required></input>
</p>
<p>
Enter Event Date:
<input name="date" type="date" value="<?php print($date);?>" required></input>
</p>
Enter Event Time:
<input name="time" type="time" value="<?php print($time);?>"required></input>
</p>
<p>
Enter Repitition Rate:
<select option name="repetitionrate">
<option value='0'
<?php
if($repetitionrate==0)
{
  print("selected");
}
?>
>Never</option>
<option value='1'
<?php
if($repetitionrate==1)
{
  print("selected");
}
?>
>Daily</option>
<option value='7'
<?php
if($repetitionrate==7)
{
  print("selected");
}
?>
>Weekly</option>
<option value='14'
<?php
if($repetitionrate==14)
{
  print("selected");
}
?>
>Every two weeks</option>
<option value='28'
<?php
if($repetitionrate==28)
{
  print("selected");
}
?>
>Every four weeks</option>
</select>
</p>
<p>
Enter Repetition Count(0-52):
<input type="number" value="<?php print($repetitioncount)?>" min="0" max="52" name="repetitioncount" required></input>
</p>
<button type="submit">Submit</button>
</form>
</body>
</html>
