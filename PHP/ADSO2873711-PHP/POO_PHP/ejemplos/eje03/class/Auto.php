<?php
require_once 'class/Vehiculo.php';
class Auto extends Vehiculo{ //Se hereda de la clase Vehiculo
    private $cantidadPuertas;

    public function __construct($cantP=null,$motor=null,$cantR=null,$mar)
    {
        $this->cantidadPuertas=$cantP;
        //SE llama al constructor de la clase padre
        parent::__construct($motor,$cantR,$mar);
    }

    public function setCantP($cantPuertas){
        $this->cantidadPuertas=$cantPuertas;
    }

    public function getCantP()
    {
        $this->cantidadPuertas;
    }
}
