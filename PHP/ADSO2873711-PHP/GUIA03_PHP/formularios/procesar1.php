<?php
/*
Arrays asociativos nativos de PHP
-----------------------------------

$_POST: array asociativo que almacena las Vbles enviadas por el metodo POST
    $_POST['txtNombre']

//////////////////////////////////////////////

$_GET: Array asociativo que almacena las Vbles enviadas por método GET
$_GET['txtEmail']

//////////////////////////////////////////////

$_REQUEST: Array asociativo que  almacena las Vbles enviadas por método GET, POST y COOKIE 
    $_REQUEST['']

*/

$nombre = $_POST['txtNombre'];
print("Nombre: $nombre");