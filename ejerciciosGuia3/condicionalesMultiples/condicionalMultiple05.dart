import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 05
  /*
 El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave.
Clave Zona Precio
12 América del Norte 200
15 América Central 220
18 América del Sur 450
19 Europa 350
23 Asia 600
25 África 600
29 Oceanía 500
Construya la solución para calcular e imprimir el costo de una llamada dada la clave.
 */
  //DEFINICIÓN Vbles
  int clave;
  double totalMinutos, precioTotal;
  //ENTRADA Alg
  print("Confirme por favor la clave asignada");
  clave = int.parse(stdin.readLineSync()!);
  print("Confirme cuantos minutos hablo");
  totalMinutos = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  precioTotal = 0;
  switch (clave) {
    case 12:
      precioTotal = totalMinutos * 200;
      print("se encuentra en América del Norte, precio 200");
      break;
    case 15:
      precioTotal = totalMinutos * 220;
      print("se encuentra en América Central, precio 220");
      break;
    case 18:
      precioTotal = totalMinutos * 450;
      print("se encuentra en América del Sur, precio 450");
      break;
    case 19:
      precioTotal = totalMinutos * 450;
      print("se encuentra en Europa, precio 430");
      break;
    case 23:
      precioTotal = totalMinutos * 600;
      print("se encuentra en Asia, precio 600");
      break;
    case 25:
      precioTotal = totalMinutos * 600;
      print("se encuentra en África, precio 600");
      break;
    case 29:
      precioTotal = totalMinutos * 500;
      print("se encuentra en Oceanía, precio 500");
      break;
    default:
      print("Clave mal ingresada");
  }
  //SALIDA Alg
  print("El precio total de su llamada es: $precioTotal");
}
