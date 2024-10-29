<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/checkBox1.css">
    <title>Document</title>
</head>

<body>
    <div class="form-container">
        <form action="procesar1.php" method="post">
            <h2>Control CheckBox </h2>
            <div class="form-group">
                <label for="txtNumber1">Número 1</label>
                <input type="number" name="txtNumber1" id="txtNumber1">
            </div>
            <div class="form-group">
                <label for="txtNumber2">Número 2</label>
                <input type="number" name="txtNumber2" id="txtNumber2">
            </div>
            <div class="form-group">
                <fieldset>
                    <legend>Operaciones</legend>
                    <label><input type="checkBox" name="operacion1" value="sumar">Sumar</label>
                    <label><input type="checkBox" name="operacion2" value="restar">Restar</label>
                    <label><input type="checkBox" name="operacion3" value="multiplicar">Multiplicar</label>
                    <label><input type="checkBox" name="operacion4" value="dividir">Dividir</label>
                </fieldset>
            </div>
            <div class="form-group">
                <button type="submit">Enviar</button>
            </div>
        </form>
    </div>
</body>

</html>
</h5>