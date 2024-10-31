<?php
require_once 'class/Vehiculo.php';
class Moto extends Vehiculo{
    public function __construct($motor=null,$cantR=null,$mar)
    {
        //SE llama al constructor de la clase padre
        parent::__construct($motor,$cantR,$mar);
    }
}