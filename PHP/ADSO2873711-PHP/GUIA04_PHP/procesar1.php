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
        $numero1 = $_POST["txtNumber1"] ?? 0;
        $numero1 = $numero1=="" ? 0:$numero1;
        $numero2 = isset($_POST['txtNumber2']) ? $_POST['txtNumber2'] : null;
        $numero2 = $numero2=="" ? 0:$numero2;
        print("<h5> Número 1 :  $numero1 </h5>");
        print("<h5> Número 2 :  $numero2 </h5>");

        if (isset($_POST['operacion1']) && $_POST['operacion1'] == "sumar") {
            $suma = $numero1 + $numero2;
            print("<label> La suma es: $suma</label>");
        }
        if (isset($_POST['operacion2']) && $_POST['operacion2'] == "restar") {
            $resta = $numero1 - $numero2;
            print("<label> La resta es: $resta</label>");
        }
        if (isset($_POST['operacion3']) && $_POST['operacion3'] == "multiplicar") {
            $multiplicacion = $numero1 * $numero2;
            print("<label> La multiplicación es: $multiplicacion</label>");
        }
        if (isset($_POST['operacion4']) && $_POST['operacion4'] == "dividir") {
            if ($numero2 ==0) {
                echo "No se puede realizar división por cero";
            } else {
                $division = $numero1 / $numero2;
                print("<label> La división es: $division</label>");
            }
        }

        ?>
    </div>
</body>

</html>