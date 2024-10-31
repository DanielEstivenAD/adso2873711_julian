<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario</title>
    <link rel="stylesheet" href="class/css/index.css">
</head>

<body>
    <div class="form-container">
        <form action="process.php" method="post">
            <h2>Crear Usuario</h2>
            <div class="form-group">
                <label for="txtVehiculo">Tipo vehículo</label>
                <select name="txtVehiculo" id="txtVehiculo">
                    <option value="">Seleccione</option>
                    <option value="Auto">Auto</option>
                    <option value="Moto">Moto</option>
                </select>
            </div>
            <div class="form-group">
                <label for="txtMarca">Marca</label>
                <input type="marca" name="txtMarca" id="txtMarca">
            </div>
            <div class="form-group">
                <label for="numCantRuedas">Cantidad de Ruedas</label>
                <input type="cantidadRuedas" name="numCantRuedas" id="numCantRuedas">
            </div>
            <div class="form-group">
                <label for="numCantPuertas">Cantidad de Puertas</label>
                <input type="cantidadPuertas" name="numCantPuertas" id="numCantPuertas">
            </div>
            <div class="form-group">
                <label for="txtVehiculoEncendido">Vehículo Encendido</label>
            </div>
            <div class="form-group">
                <div class="alinear">
                    <input type="radio" name="encendido" id="txtencendido" value="encendido">
                    <label for="txtRestar">Si</label>
                </div>
            </div>
            <div class="form-group">
                <div class="alinear">
                    <input type="radio" name="encendido" id="txtNoEncendido" value="NoEncendido">
                    <label for="txtRestar">No</label>
                </div>
            </div>
            <div class="form-group">
                <button type="submit">Registrar</button>
            </div>
        </form>
    </div>
</body>

</html>