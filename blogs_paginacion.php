<?php
    include "dbconnect.php";//para que se incluya el codigo de este archivo

    $filas_pagina = $_GET["filas_pagina"];
    $numero_pagina = $_GET["numero_pagina"];
    $inicio_pagina = ($numero_pagina - 1) * $filas_pagina;

    $sql = "SELECT IdBlog, TituloBlog, DescripcionBlog, ImagenBlog FROM blogs
            LIMIT $inicio_pagina, $filas_pagina"; //Consulta SQL
    $rs = $cn->prepare($sql);// Prepara la Consulta
    $rs->execute(); //Ejecuta la Consulta

    $rows = $rs->fetchAll(PDO::FETCH_ASSOC);
    //LA consulta se vuelca en un array asociativo

    $sqlTotal = "SELECT COUNT(IdBlog) as total FROM blogs";
    $rs = $cn->prepare($sqlTotal);// Prepara la Consulta
    $rs->execute(); //Ejecuta la Consulta
    $totalFilas = $rs->fetch(PDO::FETCH_ASSOC)["total"];

    $response = [
        "total" => $totalFilas,
        "blogs" => $rows
    ];

    echo json_encode($response);//Devuelve los datos en formato JSON
?>