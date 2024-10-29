import 'Productos.dart';

class DiscoDuro extends Producto {
  String _tipoDisco;
  double _capacidad;

  DiscoDuro(int _codProducto, String _nomProducto, bool _disponible,
      double _precio, this._tipoDisco, this._capacidad)
      : super(_codProducto, _nomProducto, _disponible, _precio);

  //------------------ GETTERS y SETTERS ------------------//
  String get tipoDisco {
    return _tipoDisco;
  }

  void set tipoDisco(String tipo) {
    _tipoDisco = tipo;
  }

  double get capacidad {
    return _capacidad;
  }

  void set capacidad(double capacidad) {
    _capacidad = capacidad;
  }

  //------------------ Método abstracto para realizar descuento DIsco Duro ------------------//
  @override
  double realizarDescuento() {
    return precio * 0.8; // Descuento del 20%
  }

  //------------------ Mostrar información del producto ------------------//
  @override
  void mostrarInfoProducto() {
    super.mostrarInfoProducto();
    print("""El tipo de disco es: $_tipoDisco.
     La capacidad del disco es: $_capacidad GB""");
  }
}
