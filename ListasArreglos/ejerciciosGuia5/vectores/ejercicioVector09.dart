import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 09
  /*Una agencia de seguros desea obtener un reporte al final del día de sus n
  empleados para determinar cuál fue el empleado que obtuvo el mayor sueldo en
  base a sus ventas y comisiones, se registrará el nombre del empleado la edad
  y el sueldo que obtuvo al final del día. Desarrollar un programa que pida al
  usuario el nombre de los n empleados, su edad y el sueldo para generar un
  reporte que lo muestre en pantalla de la siguiente manera: el nombre del
  empleado, edad, sueldo, el empleado con mayor sueldo, el sueldo del empleado
  que gana más y su edad.
  
  Debe declarar un arreglo de enteros para la edad.
  Debe declarar un arreglo de reales para el sueldo.
  Debe declarar un arreglo de cadena para el nombre. 
 */
  //DEFINICIÓN Vbles
  List<String?> nombre = [];
  List<int> edad = [];
  List<double> sueldo = [];
  int cantEmpleados, edadEmpleados=0, edadMayor=0; //edadMayor = al edad del empleado con mayor sueldo
  String? nombreEmpleado, empleadoMayor; //empleadoMayor = al nombre del empleado con mayor sueldo
  double sueldoEmpledos, sueldoMayor = 0;
  //ENTRADA Alg
  print("Cuantos empleados se evaluarán?");
  cantEmpleados = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  for (var i = 0; i < cantEmpleados; i++) {
    print("Confirme su nombre, empleado ${i + 1}");
    nombreEmpleado = stdin.readLineSync();
    nombre.add(nombreEmpleado);
    print("Confirme su edad, empleado ${i + 1}");
    edadEmpleados = int.parse(stdin.readLineSync()!);
    edad.add(edadEmpleados);
    print("Confirme su sueldo, empleado ${i + 1}");
    sueldoEmpledos = double.parse(stdin.readLineSync()!);
    sueldo.add(sueldoEmpledos);
    if (sueldoEmpledos > sueldoMayor) {
      sueldoMayor = sueldoEmpledos;
      empleadoMayor = nombreEmpleado;
      edadMayor = edadEmpleados;
    }
  }
  print(nombre);
  print(edad);
  print(sueldo);
  //SALIDA Alg
  print("Tiene un total de $cantEmpleados de empleados");
  print("El nombre del empleado con mayor sueldo es $empleadoMayor, su edad es de $edadMayor, su sueldo es de $sueldoMayor");
}
