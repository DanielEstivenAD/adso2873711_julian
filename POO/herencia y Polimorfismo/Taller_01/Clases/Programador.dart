import 'Persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;
  Programador(this._empresa, this._salario, String _nombre, int _edad, String _profesion)
      : super(_nombre, _edad, _profesion);
  setEmpresa(String empresa) {
    _empresa = empresa;
  }

  getEmpresa() {
    return _empresa;
  }

  setSalario(double salario) {
    _salario = salario;
  }

  getSalario() {
    return _salario;
  }

  obtenerSalarioNeto() {
    double salarioNeto;
    salarioNeto = _salario * 0.11;
    return _salario -=salarioNeto;
  }
  void mostrarInfo() {
    super.mostrarInfo();
    print("""
La empresa en la que trabaja es $_empresa,
El  salario neto del programador es de $_salario
""");
  }
}
