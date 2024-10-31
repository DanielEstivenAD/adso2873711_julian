<?php
class Persona
{
    public $nombre;
    public $email;
    public $edad;

    //Método que se ejecuta cuando se crea un objeto
    public function __construct($nom=null,$email=null,$edad=null)
    {
        echo "<br> Se crea un objeto persona<br>";
        $this->nombre = $nom;
        $this->email = $email;
        $this->edad = $edad;
    }
    public function saludar()
    {
        echo <<<TEST
            Hola soy $this->nombre, tengo $this->edad años y
            mi email es $this->email <br>
        TEST;
    }

    public function __destruct()
    {
        echo "<br> Se destruye el objeto persona<br>";
    }
}
