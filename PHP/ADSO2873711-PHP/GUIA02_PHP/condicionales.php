<?php
$aleatorio = rand(1, 999);
if ($aleatorio > 50) {
    echo "El número es mayor a 50";
} else {
    echo "El número es menor a 50";
}
/* Generar un valor aleatorio entre 1 y 999. Luego mostrar.
Si tiene 1,2 0 3 dígitos 
if(){
} elseif(){
}else{
} */
echo"<br>";
echo "el número aleatorio es : $aleatorio ";
echo"<br>";
if ($aleatorio < 10) {
    echo "El número cuenta con un solo dígito";
} elseif ($aleatorio < 100) {
    echo "El número cuenta con dos dígitos";
} elseif ($aleatorio < 1000) {
    echo "El número cuenta con tres dígitos";
} else {
    echo "El número cuenta con más de tres dígitos";
}
