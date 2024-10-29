import 'Electrodomestico.dart';

class Parlante extends Electrodomestico {
  double _peso, _potencia;

  Parlante(int _codProducto, String _nomProducto,bool _disponible, double _precio, double _consumoWatts, bool _tieneBluetooth, this._potencia, this._peso)
      : super(_codProducto, _nomProducto, _disponible, _precio, _consumoWatts, _tieneBluetooth);

  //------------------ GETTERS y SETTERS ------------------//
  double get potencia {
    return _potencia;
  }

  void set potencia(double potencia) {
    _potencia = potencia;
  }

  double get peso {
    return _peso;
  }

  void set peso(double peso) {
    _peso = peso;
  }

  //------------------ Mostrar información del producto ------------------//
  @override
  void mostrarInfoProducto() {
    super.mostrarInfoProducto();
    print("""la potencia del parlante es de: $_potencia.
     El peso del parlante es de: $_peso kg""");
  }
}