class Evento {
  String _nombre; //Atributo privado
  int cantPersonas; //Atributo publico
  DateTime _fecha; // Atributo privado

  Evento(this._nombre, this.cantPersonas, this._fecha);

// Metodos SETTERS y GETTERS
  void setNombre(String nom) {
    _nombre = nom;
  }

  String getNombre() {
    return _nombre;
  }

  void setCantPersonas(int cant) {
    cantPersonas = cant;
  }

  int getCantPersonas() {
    return cantPersonas;
  }

  void setFechaEvento(DateTime fecha) {
    _fecha = fecha;
  }

  DateTime getFechaEvento() {
    return _fecha;
  }

  void _mostrarInfo() {
    print("""
        **********************************************
        nombre: $_nombre.
        cantidad de personas: $cantPersonas.
        Fecha: $_fecha.
        **********************************************
    """);
  }

  void mostrarInformacion(){
    _mostrarInfo();
  }
}
