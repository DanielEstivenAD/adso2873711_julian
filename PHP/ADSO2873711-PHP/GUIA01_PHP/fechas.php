<?php
$fechaActual = date('d-m-y');
echo "Fecha Actual> $fechaActual";
echo"<br>";
echo 'Fecha Actual> $fechaActual';
echo"<br>";
echo 'Fecha Actual> $fechaActual '.$fechaActual;
echo"<br>";

$dia = date('d');
$mes = date('m');
$year = date('y');
print(" <br> Día: $dia <br> ");
print(" <br> Mes: $mes <br> ");
print(" <br> Año: $year <br> ");    

$hoy = date("l");
$hoy11 = date("z");
$meses = date("F");
$years = date("Y");
$hora = date("e");

print(" <br> Fecha hoy: $hoy <br> ");
print(" <br> día del año es: $hoy11 <br> ");
print(" <br> nombre del mes: $meses <br> ");
print(" <br> el año completo es: $years <br> ");
print(" <br> el año la hora es: $hora <br> ");

if ($dia <= 10) {
    echo"El sitio está disponible";
} else{
    echo"El sitio no está disponible,  por favor regrese el dia 10";
}
?>