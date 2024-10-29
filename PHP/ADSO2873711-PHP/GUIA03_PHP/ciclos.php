<?php
//CICLO FOR
for ($i = 0; $i < 10; $i++) {
    print("<br>Número $i");
}
echo "<br><hr>";
$arrayFrutas = ["Mango", "Pera", "Piña", "Kiwi"];
for ($i = 0; $i < count($arrayFrutas); $i++) {
    echo "<br>" . $arrayFrutas[$i];
}

echo "<br><hr>";
foreach ($arrayFrutas as $item) {
    echo "<br>$item";
}
echo "<br><hr>";
$arrayUsuario =
    ["nombre" => "Juan", "email" => "juan@gmail.com", "edad" => 21, "estado" => true];
foreach ($arrayUsuario as $clave => $valor){
    echo "<br>Clave: $clave --  $valor";
}
//CICLO WHILE
$valor = rand(1,100);
$inicio = 1;
echo "Valor generado : $valor";
while ($inicio <= $valor) {
    echo "<br>$inicio";
    $inicio++;
}
/******************************/
echo "<br><hr>";
$dia = date("d");
$inicio = 1;
do {
    echo "<br>$inicio";
    $inicio++;
} while ($inicio <= $dia);