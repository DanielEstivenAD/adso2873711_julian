import 'Productos.dart';

class Electrodomestico extends Producto {
  double _consumoWatts;
  bool _tieneBluetooth;

  Electrodomestico(int _codProducto, String _nomProducto, bool _disponible, double _precio, this._consumoWatts, this._tieneBluetooth)
      : super(0,'',_disponible, _precio){
      this.codProducto = _codProducto;
      this.nomProducto = _nomProducto;
      }

  //------------------ GETTERS y SETTERS ------------------//
  double get consumoWatts {
    return _consumoWatts;
  }

  void set consumoWatts(double consumo) {
    _consumoWatts = consumo;
  }

  bool get tieneBluetooth {
    return _tieneBluetooth;
  }

  void set tieneBluetooth(bool bluetooth) {
    _tieneBluetooth = bluetooth;
  }

  //------------------ Método abstracto para realizar descuento electrodomestico ------------------//
  @override
  double realizarDescuento() {
    return precio * 0.7; // Descuento del 30%
  }

  //------------------ Mostrar información del producto ------------------//
  double calcularPrecioConsumo(double horas) {
    return _consumoWatts * horas * 0.05;
  }
}