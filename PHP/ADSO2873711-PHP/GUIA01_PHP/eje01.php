<html>

<head>
    <title>Ejemplo usando PHP</title>
    <style type="text/css">
        body {
            background-color: black;
        }

        p {
            color: white;
            text-align: center;
            justify-content: center;
            display: flex;
        }

        #contenedor {
            background-color: green;
            width: 300px;
            text-align: center;
            margin: auto;
            padding: 15px;
            border-radius: 50px;
            margin-bottom: 10px;
        }

        .contenedor1 {
            background-color: green;
            width: 300px;
            text-align: center;
            margin: auto;
            padding: 15px;
            border-radius: 50px;
            justify-content: center;
            display: block;
        }

        .image {
            width: 200px;
            height: 100px;
            display: flex;
            text-align: center;
            justify-content: center;
            margin-left: 16%;
        }

        button{
            height: 50px;
            width: 150px;
            border-radius: 40px;
            background-color: #0003;
        }
        button a{
            color: white;
            text-decoration: none;
        }
    </style>
</head>

<body>

    <?php
    //Codigo realizado con Php
    echo "<div id='contenedor'>";
    echo "<p>INFORMACION</p>";
    echo "</div>";
    ?>
    <!-- Codgio solo html -->
    <div class="contenedor1">
        <img src="PHP-logo.svg.png" class="image"></img>
        <p>
            Hello instructor, si da clic en el botón lo llevara a toda la informacion de PHP 
        </p>
        <button>
            <a href="phpInfo.php" target="_blank">Informacion de Php</a>
        </button>
    </div>

    <!-- Codigo con Html y php -->

    <!-- Codigo con Heredoc php -->
</body>

</html>