<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/formulario2.css">
</head>
<body>
<div class="form-container">
        <form action="procesar4.php" method="post">
            <h2>Crear Usuario</h2>
            <div class="form-group">
                <label for="txtNumber1">Número 1</label>
                <input type="number" name="txtNumber1" id="txtNumber1">
            </div>
            <div class="form-group">
                <label for="txtNumber2">Número 2</label>
                <input type="number" name="txtNumber2" id="txtNumber2">
            </div>
            <div class="form-group">
                <label for="txtSumar">Sumar</label>
                <input type="radio" name="operation" id="txtSumar" value="sumar">
            </div>
            <div class="form-group">
                <label for="txtRestar">Restar</label>
                <input type="radio" name="operation" id="txtRestar" value="restar">
            </div>
            <div class="form-group">
                <button type="submit">Realizar operación</button>
            </div>
        </form>
    </div>
</body>
</html>