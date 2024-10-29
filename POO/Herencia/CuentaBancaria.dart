class Cuentabancaria {
  double _saldo;
  Cuentabancaria(this._saldo);

  void depositas(double deposito){
    _saldo += deposito;
  }

  double obtenerSaldo(){
    return _saldo;
  }
}