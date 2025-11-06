<?php
    include "dbconnect.php";//para que se incluya el codigo de este archivo

    $sql = "SELECT IdBlog, TituloBlog, DescripcionBlog, ImagenBlog 
            FROM blogs"; //Consulta SQL
    $rs = $cn->prepare($sql);// Prepara la Consulta
    $rs->execute(); //Ejecuta la Consulta

    $rows = $rs->fetchAll(PDO::FETCH_ASSOC);
    //LA consulta se vuelca en un array asociativo

    echo json_encode($rows);//Devuelve los datos en formato JSON
?>