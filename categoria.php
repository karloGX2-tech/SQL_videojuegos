<?php
include "dbconnect.php";

$sql = "SELECT consolas.IdCategoria, categoria.Nombre, COUNT(*) AS total, categoria.Descripcion, Foto
        FROM consolas
        INNER JOIN categoria
        ON consolas.IdCategoria = categoria.IdCategoria
        GROUP BY IdCategoria
        ORDER BY categoria.Nombre";
$rs = $cn->prepare($sql);//prepara la consulta
$rs -> execute();//Ejecuta la consulta


$rows = $rs->fetchAll(PDO::FETCH_ASSOC);
//El resultado de la consulta se vuelca en un  array asociativo
echo json_encode($rows);
?>
