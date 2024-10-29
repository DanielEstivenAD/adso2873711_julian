import 'Electrodomestico.dart';

class Portatil extends Electrodomestico {
  double _tamanioMemoria;
  String _procesador;

  Portatil(int _codProducto, String _nomProducto, bool _disponible, double _precio, double _consumoWatts, bool _tieneBluetooth, this._tamanioMemoria, this._procesador)
      : super(_codProducto,_nomProducto, _disponible, _precio, _consumoWatts, _tieneBluetooth);

  //------------------ GETTERS y SETTERS ------------------//
  double get tamanoMemoria {
    return _tamanioMemoria;
  }

  void set tamanoMemoria(double memoria) {
    _tamanioMemoria = memoria;
  }

  String get procesador {
    return _procesador;
  }

  void set procesador(String procesador) {
    _procesador = procesador;
  }

  //------------------ Mostrar información del producto ------------------//
  @override
  void mostrarInfoProducto() {
    super.mostrarInfoProducto();
    print("""La memoria es de: $_tamanioMemoria GB.
     el tipo de procesador es: $_procesador""");
  }
}