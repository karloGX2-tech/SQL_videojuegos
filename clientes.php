<?php
header("Access-Control-Allow-Origin: *");
$cn = new PDO("mysql:host=localhost;dbname=videojuegos","root","");

$sql = "SELECT * FROM clientes";
$rs = $cn->prepare($sql);
$rs -> execute();


$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rows);
?>
