<?php
include "database.php";

// $productID = $_POST["productid"];
 $name= $_POST["name"];
 $price = $_POST["price"];
 $stock = $_POST["stock"];

$mysqli->query("INSERT INTO products (name, price, stock) VALUES ('".$name."', '".$price."', '".$stock."')");
?>
