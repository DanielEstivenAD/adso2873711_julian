<?php
$max = 10;
$inicio = 1;
$valor;
$tabla = 2;
//Ciclo FOR
for ($i = 0; $i < $max; $i++) {
    $valor =  $tabla * $inicio;
    echo "<br> $tabla x $inicio = $valor";
    $inicio++;
    
}
echo "<br>";
echo "<br><hr>";
//Ciclo While
$inicio = 1;
$tabla = 5;
while ($inicio <= $max) {
    $valor =  $tabla * $inicio;
    echo "<br> $tabla x $inicio = $valor";
    $inicio++;

}
echo "<br>";
echo "<br><hr>";
//Ciclo Do While
$inicio = 1;
$tabla = 7;
do {
    $valor =  $tabla * $inicio;
    echo "<br> $tabla x $inicio = $valor";
    $inicio++;
} while ($inicio <= $max);
