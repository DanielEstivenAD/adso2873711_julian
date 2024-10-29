<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario Reto</title>
    <link rel="stylesheet" href="css/formulario3.css">
</head>

<body>
    <div class="form-container">
        <form action="procesar3.php" method="post">
            <h2>Crear Usuario</h2>
            <div class="form-group">
                <label for="txtNombre">Nombre</label>
                <input type="text" name="txtNombre" id="txtNombre">
            </div>
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <input type="email" name="txtEmail" id="txtEmail">
            </div>
            <div class="form-group">
                <label for="txtTelefono">Telefono</label>
                <input type="telefono" name="txtTelefono" id="txtTelefono">
            </div>
            <div class="form-group">
                <label for="txtEdad">Edad</label>
                <input type="date" name="txtEdad" id="txtEdad">
            </div>
            <div class="form-group">
                <label for="txtCity">Ciudad</label>
                <select name="txtCity" id="txtCity">
                    <option value="">Seleccione</option>
                    <option value="Armenia">Armenia</option>
                    <option value="Manizales">Manizales</option>
                    <option value="Pereira">Pereira</option>
                    <option value="Bogotá">Bogotá</option>
                    <option value="Medellín">Medellín</option>
                    <option value="Cali">Cali</option>
                    <option value="Tulua">Tulua</option>
                    <option value="Tolima">Tolima</option>
                    <option value="Cartago">Cartago</option>
                    <option value="Boyacá">Boyacá</option>
                </select>
            </div>
            <div class="form-group">
                <button type="submit">Crear</button>
            </div>
        </form>
    </div>
</body>

</html>