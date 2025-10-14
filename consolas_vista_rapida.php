<?php
include "dbconnect.php";

$idconsolas = $_GET["idconsolas"];
$sql = "SELECT IdConsola, NombreConsola, PrecioConsola, ImagenConsolaGrande
        FROM consolas
        WHERE IdConsola = $idconsolas;";//Consulta SQL
$rs = $cn->prepare($sql);//Prepara Consulta
$rs -> execute();//Ejecuta consulta


$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rows);
?>