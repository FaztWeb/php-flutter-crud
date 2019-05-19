<?php
include "database.php";

$id= $_POST["id"];
$name = $_POST["name"];
$price= $_POST["price"];
$stock= $_POST["stock"];

// update products set name='test', price=30, stock=40 where id = 1;
$mysqli->query("UPDATE products SET name='".$name."', price= '".$price."', stock='".$stock."' WHERE id='".$id."'");

?>
