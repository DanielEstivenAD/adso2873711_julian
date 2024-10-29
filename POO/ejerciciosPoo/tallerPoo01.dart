import 'dart:io';
import 'Empleado.dart';

void main() {
  List<Empleado> empleados = [];
  int cantempleados = 0;
  String tipoContrato = '';
  print('*' * 50);
  print("Cuantos empleados desea registrar");
  cantempleados = int.parse(stdin.readLineSync()!);
  print('*' * 50);

  // Añadir empleados a la lista
  for (int i = 0; i < cantempleados; i++) {
    print('*' * 50);
    print('Ingrese el nombre del empleado ${i + 1}:');
    String nombre = stdin.readLineSync()!;
    print('*' * 50);
    print('Ingrese la edad del empleado ${i + 1}:');
    int edad = int.parse(stdin.readLineSync()!);
    print('*' * 50);
    print('Ingrese el salario del empleado ${i + 1}:');
    double salario = double.parse(stdin.readLineSync()!);
    print('*' * 50);
    print('Ingrese el puesto del empleado ${i + 1}:');
    String puesto = stdin.readLineSync()!;
    print('*' * 50);
    bool contratoValido = false;
    while (!contratoValido) {
      print(
          'Ingrese el tipo de contrato del empleado ${i + 1} (Indefinido, Temporal, Contratista):');
      tipoContrato = stdin.readLineSync()!.trim();

      // Validación del tipo de contrato
      if (tipoContrato.toLowerCase() == 'indefinido' ||
          tipoContrato.toLowerCase() == 'temporal' ||
          tipoContrato.toLowerCase() == 'contratista') {
        contratoValido = true;
      } else {
        print(
            'Tipo de contrato inválido. Por favor ingrese "Indefinido", "Temporal" o "Contratista".');
      }
    }

    empleados.add(Empleado(nombre, edad, salario, puesto, tipoContrato));
    print('*' * 50);
    // int edades;
    // double salarios;
    // String puestos, tipocontratos, nombres;
    // List<Empleado> empleados;
    // Empleado empleado = Empleado(nombres, edades, salarios, tipocontratos); Se crea el objeto
    // empleados.add(empleado); se agrega el objeto en la lista
  }

  for (int i = 0; i < empleados.length; i++) {
    empleados[i].mostrarInformacion();
    print('*' * 50);
  }

  mostrarListaEmpleados(empleados);
}

void mostrarListaEmpleados(List<Empleado> mostrarEmpleados) {
  // LOS METODOS EN EL MAIN SE LLAMAN SIN PUNTO  ---
  String puestoNuevo;
  double salarioNuevo;
  for (var i = 0; i < mostrarEmpleados.length; i++) {
    print('*' * 50);
    print(
        "Confirme cuanto le aumentara el salario a el empleado ${mostrarEmpleados[i].nombreEmpleado()}");
    salarioNuevo = double.parse(stdin.readLineSync()!);
    mostrarEmpleados[i].aumentarSalario(salarioNuevo);
    print('*' * 50);
    print(
        'Indique el nuevo puesto del empleado ${mostrarEmpleados[i].nombreEmpleado()}');
    puestoNuevo = stdin.readLineSync()!;
    mostrarEmpleados[i].cambiarPuesto(puestoNuevo);
    print('*' * 50);
    print(
        'la informacion del empleado ${mostrarEmpleados[i].nombreEmpleado()} es');
    mostrarEmpleados[i].cumplirAnios();
    mostrarEmpleados[i].mostrarInformacion();
    double newSalarioBonificacion = mostrarEmpleados[i].calcularBonificacion();
    print(
        "El salario con bonificacion del empleado ${mostrarEmpleados[i].nombreEmpleado()} es de: $newSalarioBonificacion");
  }
}
