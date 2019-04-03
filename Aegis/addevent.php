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
$date = new DateTime("now", new DateTimeZone('America/New_York') );
if(isset($_POST["date"]))
{
  $username=$_SESSION["username"];
  $name=$_POST["name"];
  $date=$_POST["date"];
  $time=$_POST["time"];
  $repetitionrate=$_POST["repetitionrate"];
  $repititioncount=$_POST["repetitioncount"];
  $query=sprintf("INSERT INTO Events(Username,Name,EventDate,EventTime,RepititionRate,RepititionCount)
  VALUES('%s','%s','%s','%s','%s','%s')",
  $username,$name,$date,$time,$repetitionrate,$repititioncount);
  $result = mysqli_query($conn,$query) or die(mysqli_error($conn));
  print("<h3>Event added</h3>");
}
?>
<h2>Edit Event</h2>
<h3>Enter event info</h3>
<form method="post">
<p>
Enter Event Name:
<input name="name" value="New Event" required></input>
</p>
<p>
Enter Event Date:
<input name="date" type="date" value="<?php echo date_format($date, 'Y-m-d');?>" required></input>
</p>
Enter Event Time:
<input name="time" type="time" value="<?php echo date_format($date, 'H:i:s');?>"required></input>
</p>
<p>
Enter Repitition Rate:
<select option name="repetitionrate">
<option value='0'>Never</option>
<option value='1'>Daily</option>
<option value='7'>Weekly</option>
<option value='14'>Every two weeks</option>
<option value='28'>Every four weeks</option>
</select>
</p>
<p>
Enter Repetition Count(0-52):
<input type="number" value="0" required min="0" max="52" name="repetitioncount" required></input>
</p>
<button type="submit">Submit</button>
</form>
</body>
</html>
