<?php

include "database.php";

$queryResult = $mysqli->query("select * from products");
$result = array();

while($fetchData = $queryResult->fetch_assoc()) {
	$result[] = $fetchData;
}

echo json_encode($result);

?>
