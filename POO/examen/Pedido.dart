  class Pedido {
    String _idPedido;
    DateTime _fechaPedido;
    DateTime _direccionEntrega;
    double _total;
    double descuento;
    bool pagado;

    Pedido(this._idPedido, this._fechaPedido, this._direccionEntrega, this._total, this.descuento, this.pagado);

    void altaPedio(){}
    void visualizarPedido(){}
    void modificarPedido(){}
    void bajaPedido(){}
    void calcularTotal(){}
    void aplicarDescuento(){}
  }