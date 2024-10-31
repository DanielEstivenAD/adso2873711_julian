<?php
class Producto
{
    private $id;
    private $nombre;
    private $precio;
    private $descripcion;

    public function __construct($id = null, $nom = null, $prec = null, $desc = null)
    {
        $this->id = $id;
        $this->nombre = $nom;
        $this->precio = $prec;
        $this->descripcion = $desc;
    }

    public function __destruct()
    {
        echo "<br> Se destruye el producto";
    }

    //SETTERS y GETTERS
    public function setId($id)
    {
        $this->id = $id;
    }
    public function getId()
    {
        return $this->id;
    }
    public function setNom($nom)
    {
        $this->nombre = $nom;
    }
    public function getNom()
    {
        return $this->nombre;
    }
    public function setPrec($prec)
    {
        $this->precio = $prec;
    }
    public function getPrec()
    {
        return $this->precio;
    }
    public function setDesc($desc)
    {
        $this->descripcion = $desc;
    }
    public function getDesc()
    {
        return $this->descripcion;
    }
}
