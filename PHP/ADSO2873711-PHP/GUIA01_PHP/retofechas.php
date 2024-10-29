<?php
date_default_timezone_set('America/Bogota');
$dias = array("Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sábado");
$meses = array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
$dia = $dias[date('w')];
$fecha = date("d");

$mestext = date("n");
$mes = $meses[$mestext-1];
$year = date("Y");
$hora = date("g:i:s a");
echo "Hola, hoy es  $dia $fecha del $mes  de $year y son las $hora.";
