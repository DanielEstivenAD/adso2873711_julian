<?php
//Se incluye el archivo Persona.php una sola vez
require_once('class/Persona.php');
$persona1 = new Persona();//Se crea el objeto persona
//Setteamos los atributos
$persona1->nombre = "Ana";
$persona1->email = "Ana@gmail.com";
$persona1->edad = 25;
//Mostrar los resultados
// echo "Su nombre es: " .$persona1->nombre;
// print ("<br>Su email es: " .$persona1->email);
// echo <<<TEST
//     <br>Su edad es: $persona1->edad años
// TEST;

$persona1->saludar();

$persona2 = new Persona("Paco","paco@gmail.com",20);
$persona2->saludar();
unset($persona2);