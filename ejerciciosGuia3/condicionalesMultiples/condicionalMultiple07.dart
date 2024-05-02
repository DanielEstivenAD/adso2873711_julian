import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL MULTIPLE 07
  /*
 El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la
duración de la llamada.
.
Clave Zona Precio Precio/minuto
(del 4 en adelante)
12 América del Norte 200 150
15 América Central 220 180
18 América del Sur 450 350
19 Europa 350 270
23 Asia 600 460
25 África 600 460
29 Oceanía 500 390
 */
  //DEFINICIÓN Vbles
  int clave;
  double totalMinutos, precioTotal, cobroAdicional, minutosAdicionales;
  //ENTRADA Alg
  print("Confirme por favor la clave asignada");
  clave = int.parse(stdin.readLineSync()!);
  print("Confirme cuantos minutos hablo");
  totalMinutos = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  precioTotal = 0;
  switch (clave) {
    case 12:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 150;
        precioTotal =cobroAdicional+200;
        print(
            "se encuentra en América del Norte, precio 200 y un cobro adicional de 150");
      } else {
        precioTotal = totalMinutos * 200;
        print("se encuentra en América del Norte, precio 200");
      }
      break;
    case 15:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 180;
        precioTotal = 180 + cobroAdicional;
        print(
            "se encuentra en América Central, precio 220 y un cobro adicional de 180");
      } else {
        precioTotal = totalMinutos * 220;
        print("se encuentra en América Central, precio 220");
      }
      break;
    case 18:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 350;
        precioTotal = 350 + cobroAdicional;
        print(
            "se encuentra en América del Sur, precio 450 y un cobro adicional de 350");
      }
      precioTotal = totalMinutos * 450;
      print("se encuentra en América del Sur, precio 450");
      break;
    case 19:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 270;
        precioTotal = 270 + cobroAdicional;
        print("se encuentra en Europa, precio 430 y un adicional de 270");
      } else {
        precioTotal = totalMinutos * 450;
        print("se encuentra en Europa, precio 430");
      }
      break;
    case 23:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 460;
        precioTotal = 460 +cobroAdicional;
        print("se encuentra en Asia, precio 600 y un cobro adicional de 460");
      }
      precioTotal = totalMinutos * 600;
      print("se encuentra en Asia, precio 600");
      break;
    case 25:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 460;
        precioTotal = 460 + cobroAdicional;
        print("se encuentra en África, precio 600 y un cobro adicional de 460");
      } else {
        precioTotal = totalMinutos * 600;
        print("se encuentra en África, precio 600");
      }
      break;
    case 29:
      if (totalMinutos > 4) {
        minutosAdicionales = totalMinutos - 4;
        cobroAdicional = minutosAdicionales * 390;
        precioTotal = 390 + cobroAdicional;
        print(
            "se encuentra en Oceanía, precio 500 y un cobro adicional de 390");
      } else {
        precioTotal = totalMinutos * 500;
        print("se encuentra en Oceanía, precio 500");
      }
      break;
    default:
      print("Clave mal ingresada");
  }
  //SALIDA Alg
  print("El precio total de su llamada es: $precioTotal");
}
