import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 06
  /*
 Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene.
Es necesario tener en cuenta si es año bisiesto o no.
 */
  //DEFINICIÓN Vbles
  String? meses;
  int anio, dias, bisiesto;
  bool esBisiesto;
  //ENTRADA Alg
  print("Confirme el mes a consultar");
  meses = stdin.readLineSync();
  print("Confirme el año a consultar");
  anio = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  dias = 0;
  esBisiesto = false;
  switch (meses?.toLowerCase()) {
    case "enero":

      dias = 31;
      break;
    case "febrero":
      bisiesto = anio % 4;
      if (bisiesto == 0) {
        dias = 29;
        esBisiesto = true;
      } else {
        dias = 28;
      }
      break;
    case "marzo":
      dias = 31;
      break;
    case "abril":
      dias = 30;
      break;
    case "mayo":
      dias = 31;
      break;
    case "junio":
      dias = 30;
      break;
    case "julio":
      dias = 31;
      break;
    case "agosto":
      dias = 31;
      break;
    case "septiembre":
      dias = 30;
      break;
    case "octubre":
      dias = 31;
      break;
    case "noviembre":
      dias = 30;
      break;
    case "diciembre":
      dias = 31;
      break;
    default:
      print("Datos mal ingresados");
  }
  //SALIDA Alg
  if (esBisiesto == true) {
    print("El año tiene 366 días");
  } else {
    print("El año tiene 365 días");
  }
  print("El mes $meses tiene $dias días");
}
