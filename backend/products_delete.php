<?php

include "database.php";

$id = $_POST["id"];
$mysqli->query("DELETE FROM products WHERE id='".$id."'");

?>
