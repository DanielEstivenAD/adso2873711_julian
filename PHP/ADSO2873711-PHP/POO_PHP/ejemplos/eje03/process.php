<?php
require_once 'class/Vehiculo.php';
require_once 'class/Moto.php';
require_once 'class/Auto.php';

// $moto1 = new Moto(false,2,"Suzuki");
// $moto1->arrancar();
// echo"<br>";
// $moto1->encenderMotor();
// $moto1->arrancar();
// /********************************************* */
// $cantRuedas = 4;
// $motorEncendido1 = true;
// $cantPuertas = 2;
// $marca = "Mini Cooper";
// echo "<br><hr>";
// $auto1 = new Auto($cantPuertas,$motorEncendido1,$cantRuedas,$marca);
// $auto1->arrancar();
// echo"<br>";
// $moto1->encenderMotor();
// $moto1->arrancar();
// echo "<br>Marca: ".$auto1->getMar();
// ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="class/css/index.css">

</head>

<body>
    <div class="info-container">
        <?php
            $tipoVehiculo = $_POST["txtVehiculo"]?? null;
            $marca =  $_POST["txtMarca"]?? null;
            $cantRuedas = $_POST["numCantRuedas"]?? null;
            $cantPuertas = $_POST["numCantPuertas"]?? null;
            $cantPuertas = $_POST["numCantPuertas"]?? null;
            $encendido = $_POST["encendido"]?? null;
            if ($encendido == "encendido") {
                $encendido = true;
            } elseif ($encendido == "NoEncendido") {
                $encendido = false;
            } else {
                $encendido = null;
            }

            if ($tipoVehiculo ==  "Moto") {
                $moto = new Moto($encendido, $cantRuedas, $marca);
                echo"se ha creado el objeto " .$moto->getMar();
                $auto->arrancar();
            } elseif ($tipoVehiculo == "Auto") {
                $auto = new Auto($cantPuertas,$encendido,$cantRuedas,$marca);
                echo"se ha creado el objeto " .$auto->getMar();
                $auto->arrancar();
            }
        ?>
    </div>
</body>

</html>
