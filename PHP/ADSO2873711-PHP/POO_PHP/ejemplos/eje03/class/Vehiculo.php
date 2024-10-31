<?php
class Vehiculo{
    //Atributos
    private $motorEncendido = false;
    private $cantidadRuedas;
    private $marca;
    
    public function __construct($motor=null,$cantR=null,$mar)
    {
        $this->motorEncendido=$motor;
        $this->cantidadRuedas=$cantR;
        $this->marca=$mar;
    }

    public function encenderMotor(){
        $this->motorEncendido = true;
    }

    public function apagarMotor(){
        $this->motorEncendido = false;
    }

    public function arrancar(){
        if($this->motorEncendido){
            echo "El auto arranca";
        } else{
            echo "Primero debe encender el vehículo";
        }
    }

    public function setMotor($motor){
        $this->motorEncendido = $motor;
    }

    public function getMotor(){
        return $this->motorEncendido;
    }

    public function setCantR($cantR){
        $this->cantidadRuedas = $cantR;
    }

    public function getCantR(){
        return $this->cantidadRuedas;
    }

    public function setMarc($mar){
        $this->marca = $mar;
    }

    public function getMar(){
        return $this->marca;
    }
    
}