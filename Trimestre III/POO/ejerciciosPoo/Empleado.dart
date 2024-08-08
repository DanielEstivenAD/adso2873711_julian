class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  Empleado(
      this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato) {}

  void aumentarSalario(double porcentaje) {
    salario += salario * (porcentaje / 100);
    print("El nuevo salario del empleado es $salario");
  }

  void cumplirAnios() {
    edad += 1;
  }

  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
    print('El nuevo puesto del empleado es $puesto');
  }

  void mostrarInformacion() {
    // print('El nombre del empleado es: $nombre');
    // print('Tiene una edad de: $edad');
    // print('Su salario es de: $salario');
    // print('Su puesto actual es puesto: $puesto');
    // print('Su Tipo de Contrato actual es: $tipoContrato');
    print('''
        Nombre: $nombre.
        Edad: $edad.
        Salario: $salario.
        Puesto: $puesto.
        Contrato: $tipoContrato.
    ''');
  }

  double calcularBonificacion() {
    double bonificacion;
    switch (tipoContrato.toLowerCase()) {
      case 'contratista':
        bonificacion = salario * 0.1;
        break;
      case 'temporal':
        bonificacion = salario * 0.05;
        break;
      case 'indefinido':
        bonificacion = salario * 0.15;
        break;
      default:
        bonificacion = 0;
    }
    salario += bonificacion;
    return salario;
  }

  String nombreEmpleado() {
    return this.nombre;
  }
}
