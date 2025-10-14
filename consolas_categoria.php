<?php
include "dbconnect.php";

$idcategoria = $_GET["idcategoria"];
$sql = "SELECT IdConsola, NombreConsola, PrecioConsola, ImagenConsolaChica
FROM consolas
WHERE IdCategoria = $idcategoria
ORDER BY NombreConsola";//Consulta SQL
$rs = $cn->prepare($sql);//Prepara Consulta
$rs -> execute();//Ejecuta consulta


$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rows);
?>