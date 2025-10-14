<?php
include "dbconnect.php";

$idconsolas = $_GET["idconsolas"];
$sql = "SELECT IdConsola, consolas.NombreConsola, PrecioConsola, ImagenConsolaGrande, PromedioEstrellas, DescripcionConsola, categoria.Nombre AS categoria
        FROM consolas
        INNER JOIN categoria
        ON consolas.IdCategoria = categoria.IdCategoria
        WHERE IdConsola = $idconsolas;";//Consulta SQL
$rs = $cn->prepare($sql);//Prepara Consulta
$rs -> execute();//Ejecuta consulta


$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($rows);
?>