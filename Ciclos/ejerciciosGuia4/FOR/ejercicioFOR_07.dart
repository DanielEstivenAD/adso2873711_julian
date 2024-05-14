import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE FOR 07
  /*
 Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
 */
  //DEFINICIÓN Vbles
  int cantCompradores = 5;
  double valorKilo, descuento, kilos, ganancias = 0, totalPagar;
  //ENTRADA Alg
  print("Confirme el valor del kilo");
  valorKilo = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  for (int i = 0; i <= cantCompradores; i++) {
    print("Indique cuantos Kilos va a comprar");
    kilos = double.parse(stdin.readLineSync()!);
    totalPagar = valorKilo * kilos;
    if (kilos >= 10) {
      descuento = totalPagar * 0.15;
      totalPagar -= descuento; //totalPagar = totalPagar - descuento;
      print("Usted tiene un descuento del 10%");
    } else {
      print("Usted no tiene descuento");
    }
    print("El total a pagar es $totalPagar");
    ganancias += totalPagar; //ganancias = ganancias+totalPagar
  }
  //SALIDA Alg
  print("El total de ganancias es $ganancias");
}
