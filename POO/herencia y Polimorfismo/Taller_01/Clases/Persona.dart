abstract class Persona {
  String _nombre;
  int _edad;
  String _profesion;
  Persona(this._nombre, this._edad, this._profesion);
  setNombre(String nombre) {
    _nombre = nombre;
  }

  getNombre() {
    return _nombre;
  }

  setEdad(int edad) {
    _edad = edad;
  }

  getEdad() {
    return _edad;
  }

  setProfesion(String profesion){
    _profesion = profesion;
  }

  getProfesion(){
    return _profesion;
  }

  void mostrarInfo() {
    print("""
su nombre es $_nombre,
y la edad es $_edad,
la profesion es $_profesion
""");
  }
}
