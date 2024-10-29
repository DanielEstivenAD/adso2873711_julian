<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/formulario3.css">
</head>

<body>
    <div class="info-container">
        <?php
            //Validacion con operador ternario
            $nombre = (isset($_POST['txtNombre']) == true) ? $_POST['txtNombre'] : null;
            $email = (isset($_POST['txtEmail']) == true) ? $_POST['txtEmail'] : null;
            //Validación de Nulo seguro
            $telefono = $_POST["txtTelefono"] ?? null;
            
            //Asegurarse de cambiar la fecha
            $edad = $_POST["txtEdad"] ?? null;
            $timeStampEdad = strtotime($edad);
            $fechaNac = date('Y', $timeStampEdad);
            $fechaActual = date('Y');
            $edad = $fechaActual - $fechaNac;

            $ciudad = $_POST["txtCity"]?? null;
            echo "<span> Nombre: $nombre</span>";
            echo "<span> Email: $email</span>";
            echo "<span> Teléfono: $telefono</span>";
            echo "<span> Edad: $edad</span>";
            if ($edad  < 18) {
                echo "Usted tiene $edad, por lo que es menor de edad";
            } else {
                echo "Usted tiene $edad, por lo que es mayor de edad";
            }
            echo "<span> Ciudad: $ciudad</span>";
        ?>
    </div>
</body>

</html>