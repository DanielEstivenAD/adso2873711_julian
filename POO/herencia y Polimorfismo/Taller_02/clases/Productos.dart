abstract class Producto {
  int codProducto;
  String nomProducto;
  bool _disponible;
  double _precio;

  Producto(this.codProducto, this.nomProducto, this._disponible, this._precio);

  //------------------ GETTERS y SETTERS ------------------//
  int get codigoProducto {
    return codProducto;
  }

  void set codigoProducto(int codigo) {
    codProducto = codigo;
  }

  String get nombreProducto {
    return nomProducto;
  }

  void set nombreProducto(String nombre) {
    nomProducto = nombre;
  }

  bool get disponible {
    return _disponible;
  }

  void set disponible(bool disponible) {
    _disponible = disponible;
  }

  double get precio {
    return _precio;
  }

  void set precio(double precio) {
    _precio = precio;
  }

  //------------------ Método abstracto para realizar descuento ------------------//
  double realizarDescuento();

  //------------------ Mostrar información del producto ------------------//
  void mostrarInfoProducto() {
    print("""El código Producto: $codProducto. 
      El nombre del pruducto es: $nomProducto.
      El producto esta Disponible: ${_disponible ? 'SI' : 'No'}. 
      El p6recio del producto es: $_precio""");
  }
}