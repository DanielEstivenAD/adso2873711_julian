<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/formulario2.css">

</head>
<body>
    <div class="info-container">
    <?php
        $numero1=$_POST['txtNumber1'] ?? null;
        $numero2=$_POST['txtNumber2'] ?? null;
        $operacion =$_POST['operation'] ?? null;
        $resultado = null;
        if ($operacion == "sumar") {
            $resultado = $numero1 + $numero2;
        } else {
            $resultado = $numero1 - $numero2;
        }
        echo"El resultado de $operacion los números $numero1 y $numero2 es $resultado";    
        ?>
    </div>
</body>
</html>