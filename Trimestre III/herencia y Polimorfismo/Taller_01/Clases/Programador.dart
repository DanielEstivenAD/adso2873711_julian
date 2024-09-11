import 'Persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;
  Programador(this._empresa,this._salario, String _nombre, int _edad) : super(_nombre,_edad);
  setEmpresa(String empresa){
    _empresa = empresa;
  }
  getEmpresa(){
    return _empresa;
  }
  setSalario(double salario){
    _salario = salario;
  }
  getSalario(){
    return _salario;
  }
  obtenerSalarioNeto(){

  }
    void mostrarInfo1(){
    this.mostrarInfo();
    print("""
La empresa en la que trabaja es $_empresa,
y su salario es de $_salario
""");
  }
}