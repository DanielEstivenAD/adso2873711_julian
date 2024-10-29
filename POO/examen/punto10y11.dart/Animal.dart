abstract class Animal {
  String _nombre, _color;
  DateTime _fechaNac;
  double _peso;
  bool _esterilizado;

  Animal(
    this._nombre,
    this._fechaNac,
    this._peso,
    this._color,
    this._esterilizado,
  );

  //-------------- GETTERS ---------------//

  String getNombre() {
    return _nombre;
  }

  String getColor() {
    return _color;
  }

  DateTime getfechaNacimiento() {
    return _fechaNac;
  }

  double getPeso() {
    return _peso;
  }

  bool getEsterilizado() {
    return _esterilizado;
  }

  int getEdad() {
    DateTime hoy = DateTime.now();
    int edad = hoy.year - _fechaNac.year;

    // Si aún no ha cumplido años este año, se le resta 1 a la edad
    if (hoy.month < _fechaNac.month ||
        (hoy.month == _fechaNac.month && hoy.day < _fechaNac.day)) {
      edad--;
    }

    return edad;
  }

    String  getIdMascota();

  void setIdMascota( String newIdMascosta);
  //-------------- SETTERS ---------------//

  void setNombre(String newNombre) {
    _nombre = newNombre;
  }

  void setColor(String newColor) {
    _color = newColor;
  }

  void setfechaNacimiento(DateTime newFechaNacimiento) {
    _fechaNac = newFechaNacimiento;
  }

  void setPeso(double newPeso) {
    _peso = newPeso;
  }

  void setEsterilizado(bool newEsterilizado) {
    _esterilizado = newEsterilizado;
  }

  void mostrarInfo();
}
