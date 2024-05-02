import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 06
  /*
 Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene.
Es necesario tener en cuenta si es año bisiesto o no.
 */
  //DEFINICIÓN Vbles
  String? bisiesto, meses;
  int ano, dias;
  //ENTRADA Alg
  print("Confirme el mes a consultar");
  meses = stdin.readLineSync();
  print("Confirme el año a consultar");
  ano = int.parse(stdin.readLineSync()!);
  print("confirme si es bisiesto SI o NO");
  bisiesto = stdin.readLineSync();
  //PROCESO Alg
  dias = 0;
  switch (meses?.toLowerCase()) {
    case "enero":
      dias = 31;
      break;
    case "febrero":
      if (bisiesto == "SI") {
        dias = 29;
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
  print("En el $ano el mes $meses tiene $dias");
}
