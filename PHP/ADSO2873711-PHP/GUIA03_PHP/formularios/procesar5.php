<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/formulario5.css">

</head>

<body>
    <div class="info-container">
        <?php
        $nombre = $_POST['txtNombre'] ?? null;
        $cedula = $_POST['txtCedula'] ?? null;
        $edad = $_POST['txtEdad'] ?? null;
        $telefono = $_POST['txtTelefono'] ?? null;
        $email = $_POST['txtEmail'] ?? null;
        $estudios = $_POST['estudios'] ?? null;

        if ($estudios == "NoStudy") {
            $estudios = "No estudia";
        } elseif ($estudios == "StudyPrimary") {
            $estudios = "Tiene estudios hasta primaria";
        } elseif ($estudios == "StudySecundary") {
            $estudios = "Tiene estudios hasta secundaria";
        } else {
            $estudios =  "No se seleccionó  ninguna opción";
        }
        echo "<span> Nombre: $nombre</span>";
        echo "<span> Cédula: $cedula</span>";
        echo "<span> Edad: $edad</span>";
        echo "<span> Telefono: $telefono</span>";
        echo "<span> Email: $email</span>";
        echo "<span> Estudios: $estudios</span>";
        ?>
    </div>
</body>

</html>