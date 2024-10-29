<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario</title>
    <link rel="stylesheet" href="css/formulario5.css">
</head>

<body>
    <div class="form-container">
        <form action="procesar5.php" method="post">
            <h2>Crear Usuario</h2>
            <div class="form-group">
                <label for="txtNombre">Nombre</label>
                <input type="text" name="txtNombre" id="txtNombre">
            </div>
            <div class="form-group">
                <label for="txtCedula">Cédula</label>
                <input type="cedula" name="txtCedula" id="txtCedula">
            </div>
            <div class="form-group">
                <label for="txtEdad">Edad</label>
                <input type="edad" name="txtEdad" id="txtEdad">
            </div>
            <div class="form-group">
                <label for="txtTelefono">Telefono</label>
                <input type="telefono" name="txtTelefono" id="txtTelefono">
            </div>
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <input type="email" name="txtEmail" id="txtEmail">
            </div>
            <div class="form-group">
                <div class="alinear">
                    <input type="radio" name="estudios" id="txtNoStudy" value="NoStudy">
                    <label for="txtRestar">1- No tiene estudios</label>
                </div>
            </div>
            <div class="form-group">
                <div class="alinear">
                    <input type="radio" name="estudios" id="txtStudyPrimary" value="StudyPrimary">
                    <label for="txtRestar">2- Estudios primarios</label>
                </div>
            </div>
            <div class="form-group">
                <div class="alinear">
                    <input type="radio" name="estudios" id="txtStudySecundary" value="StudySecundary">
                    <label for="txtRestar">3- Estudios secundarios</label>
                </div>

            </div>
            <div class="form-group">
                <button type="submit">Crear</button>
            </div>
        </form>
    </div>
</body>

</html>