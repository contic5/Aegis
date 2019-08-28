<?php
require("sessionstart.php");
//Requires user to be logged in and to have their usertype be admin
if(isset($_SESSION["Username"])&&isset($_SESSION["Usertype"])&&
($_SESSION["Usertype"]=="Participant")||($_SESSION["Usertype"]=="Jobcoach")||($_SESSION["Usertype"]=="Admin"))
{

}
else
{
  header("Location: index.php");
}
?>
