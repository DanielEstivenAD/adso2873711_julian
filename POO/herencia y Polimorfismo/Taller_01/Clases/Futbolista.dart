import 'Persona.dart';

class Futbolista extends Persona {
  String _equipo;
  String _posicion;
  int _cantidadGoles;
  Futbolista(this._equipo, this._posicion, this._cantidadGoles, String _nombre,
      int _edad, String _profesion)
      : super(_nombre, _edad, _profesion);
  setEquipo(String equipo) {
    _equipo = equipo;
  }

  getEquipo() {
    return _equipo;
  }

  setPosicion(String posicion) {
    _posicion = posicion;
  }

  getPosicion() {
    return _posicion;
  }

  setCantGoles(int goles) {
    _cantidadGoles = goles;
  }

  getCantGoles() {
    return _cantidadGoles;
  }

  bool esTitular() {
    if (_cantidadGoles > 5) {
      return true;
    } else {
      return false;
    }
  }

  void mostrarInfo() {
    super.mostrarInfo();
    print("""
el equipo es $_equipo,
la posicion es $_posicion,
la cantidad de goles es $_cantidadGoles
El jugador es Titular: ${esTitular() ? 'SI' : 'No'}
"""); // ${esTitular() ? 'SI' : 'No'} es igual a ${esTitular()==true ? 'SI' : 'No'}
  }
}
