<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/checkBox1.css">
    <title>Document</title>
</head>

<body>
    <div class="info-container">
        <?php
        $nombre = $_POST["txtNombre"] ?? "";
        $deportes = $_POST["deportes"] ?? null;
        $cantidadDeportes = count($deportes);
        $htmlDeportes = "";
        foreach ($deportes as $item){
            $htmlDeportes .= "<label>$item</label>";
            // echo"<label>Deporte: $item</label>";
        }

        //Heredoc
        $output = <<<OUT
        <label><h4>Nombre:</h4> $nombre</label>
        <label><h4>Cantidad de deportes:</h4> $cantidadDeportes</label>
        <label><h4>Deportes Seleccionados:</h4> $htmlDeportes</label>
        OUT;
        echo $output;
        // echo"<pre>";
        // print_r($deportes);
        // echo"<pre>";
        ?>
    </div>
</body>

</html>