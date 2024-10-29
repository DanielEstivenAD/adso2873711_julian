<?php
$nombre = "juan"; //String
$edad = 25; // int
$estado = true; // bool
$peso = 65.5; //double

//Operador Ternario
$estadoTxt = ($estado)?"activo":"Inactivo"; //($estado== true)?"activo":"Inactivo";
//$estadoTxt = (!$estado)?"Inactivo":"activo"; // Si el estado no esta activo, mostrará inactivo
$output = <<<OUT
    Nombre: $nombre. <br>
    Edad: $edad. <br>
    Estado: $estadoTxt. <br>
    Peso: $peso. <br>
OUT;
echo $output;

$estaLloviendo = false;
// $clima = ($estaLloviendo)?"Si,  esta lloviendo":"No, no esta lloviendo";
 $clima = (!$estaLloviendo)?"No, no esta lloviendo":"Si,  esta lloviendo";
echo "Clima: $clima";

//Arrays (listas)
echo"<br><hr>";
//Array escalar (índices numericos desde cero)
$arrayFrutas = ["Mango","Pera","Piña","Kiwi"];
echo $arrayFrutas[2];
//Array asociativo (índices son cadenas)
echo"<br><hr>";
$arrayUsuario =
["nombre"=>"Juan","email"=>"juan@gmail.com","edad"=>21,"estado"=>true];
echo $arrayUsuario["edad"];
//Array multiple (índices son cadenas)
echo"<br><hr>";
$arrayMultiple =["nombre"=>"ana","email"=>"ana@gmail.com","edad"=>19,"estado"=>true,365,"SENA",$arrayUsuario, "frutas"=> $arrayFrutas,9];
echo"<br>Nombre: ".$arrayMultiple["nombre"];
echo"<br>Email: ".$arrayMultiple["email"];
echo"<br>Edad: ".$arrayMultiple["edad"];
echo"<br>Estado: ".$arrayMultiple["estado"];
echo"<br>Días del año: ".$arrayMultiple[0];
echo"<br>Mejor institución colombiana: ".$arrayMultiple[1];
echo"<br>Fruta: ".$arrayMultiple["frutas"][1];//Forma para ingresar a dos indices 
echo"<br>Nombre: ".$arrayMultiple[2]["nombre"];
echo"<br> Hoy es: ".$arrayMultiple[3]; 
?>