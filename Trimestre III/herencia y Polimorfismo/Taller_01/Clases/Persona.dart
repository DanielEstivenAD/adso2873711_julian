abstract class  Persona {
  String _nombre;
  int _edad;
  Persona(this._nombre,this._edad);
  setNombre(String nombre){
    _nombre = nombre;
  }
  getNombre(){
    return _nombre;
  }
  setEdad(int edad){
    _edad = edad;
  }
  getEdad (){
    return _edad;
  }
  void mostrarInfo(){
    print("""
su nombre es $_nombre,
y la edad es $_edad
""");
  }
}