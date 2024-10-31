<?php
//Se incluye la clase producto
require_once 'class/Producto.php';
$id = 1;
$nombre = "Portatil Lenovo";
$precio = 2000000;
$descripcion = "Equipo de cómputo";

$prod_obj = new Producto($id, $nombre, $precio, $descripcion);
echo "<br> El id del producto es: ".$prod_obj->getId();
echo "<br> El nombre del producto es: ".$prod_obj->getNom();
echo "<br> El precio del producto es: ".$prod_obj->getPrec();
echo "<br> La descripcion del producto es: ".$prod_obj->getDesc();
$prod_obj->setPrec(3500000);
echo "<br> El nuevo precio del producto es: ".$prod_obj->getPrec();