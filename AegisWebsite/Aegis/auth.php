<?php
require("sessionstart.php");
if(!isset($_SESSION["Username"]))
{
  header("Location: index.php");
}
?>
