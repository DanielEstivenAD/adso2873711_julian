import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 01
  /*
  El jefe del personal de operación de la industria aceitera Móvil desea calcular el sueldo neto de sus empleados bajo las siguientes normas, solicitar el nombre del empleado, número de horas trabajadas y la cuota por hora trabajada, para calcular el sueldo neto del empleado, se le otorga un incentivo del  5%  si  el  empleado  trabajó  más  de  40  horas.  Imprimir  el  nombre  del  empleado  y  su  sueldo. Desarrollar el algoritmoy diagrama de flujo.
  */
  //DEFINICÍON vbles
  String? nombre;
  double horasTrabajadas, cuotashora, sueldo, incentivo;

  print("Ingrese el nombre del empleado");
  nombre = stdin.readLineSync();
  print("Digite cantidad de horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  print("Ingrese el valor de la hora");
  cuotashora = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  sueldo = horasTrabajadas * cuotashora;
  if (horasTrabajadas > 40) {
    incentivo = sueldo * 0.05;
    sueldo = sueldo + incentivo;
    print("Se obtuvo un incentivo de: $incentivo");
  }
  //SALIDA Alg
  print("El nombre es: $nombre y su sueldo neto es: $sueldo");
}
