import 'Productos.dart';

class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;

  Marcador(int _codProducto, String _nomProducto, bool _disponible, double _precio, this._colorTinta, this._tipoMarcador)
      : super(_codProducto, _nomProducto, _disponible, _precio);

  //------------------ GETTERS y SETTERS ------------------//
  String get colorTinta {
    return _colorTinta;
  }

  void set colorTinta(String color) {
    _colorTinta = color;
  }

  String get tipoMarcador {
    return _tipoMarcador;
  }

  void set tipoMarcador(String tipo) {
    _tipoMarcador = tipo;
  }

  //------------------ Método abstracto para realizar descuento Marcador ------------------//
  @override
  double realizarDescuento() {
    return precio * 0.9; // Descuento del 10%
  }

  //------------------ Mostrar información del producto ------------------//
  @override
  void mostrarInfoProducto() {
    super.mostrarInfoProducto();
    print("""eL color de Tinta del marcador es: $_colorTinta.
     El tipo de Marcador es: $_tipoMarcador""");
  }
}