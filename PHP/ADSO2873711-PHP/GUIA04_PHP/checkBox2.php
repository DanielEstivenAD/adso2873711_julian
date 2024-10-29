<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/checkBox2.css">
    <title>Document</title>
</head>

<body>
    <div class="form-container">
        <form action="procesar2.php" method="post">
            <h2>Desportes que practica</h2>
            <div class="form-group">
                <label for="txtNombre">Nombre</label>
                <input type="text" name="txtNombre" id="txtNombre">
            </div>
            <div class="form-group">
                <fieldset>
                    <legend>Selecciones Deportes</legend>
                    <label><input type="checkBox" name="deportes[]" value="futbol">Futbol</label>
                    <label><input type="checkBox" name="deportes[]" value="basket">Baloncesto</label>
                    <label><input type="checkBox" name="deportes[]" value="voleibol">Voleibol</label>
                    <label><input type="checkBox" name="deportes[]" value="natacion">Natación</label>
                    <label><input type="checkBox" name="deportes[]" value="ajedrez">Ajedrez</label>
                    <label><input type="checkBox" name="deportes[]" value="tenis de mesa">Tenis de mesa</label>
                    <label><input type="checkBox" name="deportes[]" value="tenis">Tenis</label>
                    <label><input type="checkBox" name="deportes[]" value="baseball">Baseball</label>
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