import 'Animal.dart';

class Perro extends Animal{
  String _raza;
  String _idMascosta;
  Perro(String _nombre, DateTime _fechaNac, this._raza, double _peso, String _color, bool _esterilizado, this. _idMascosta) :super(_nombre, _fechaNac, _peso, _color, _esterilizado);

    String getRaza() {
    return _raza;
  }

    void setRaza(String newRaza) {
     _raza = newRaza;
  }

  String  getIdMascota() {
    return _idMascosta;
  }

  void setIdMascota( String newIdMascosta){
    _idMascosta = newIdMascosta;
  }

  void mostrarInfo() {
    print('Nombre: ${getNombre()}');
    print('Fecha de Nacimiento: ${getfechaNacimiento()}');
    print('Edad: ${getEdad()} años');
    print('Peso: ${getPeso()} kg');
    print('Color: ${getColor()}');
    print('Esterilizado: ${getEsterilizado() ? "Sí" : "No"}');
    print('ID de Mascota: ${getIdMascota()}');
  }

}
