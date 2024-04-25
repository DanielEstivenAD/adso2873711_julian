import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 06
  /*
 En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. Obtener cuánto dinero se le descuenta.
 */
  //DEFINICÍON vbles
  int numeroAzar;
  double totalPagar, descuento, totalConDescuento;
  //ENTRADA Alg
  print("Indique por favor el Total a pagar");
  totalPagar = double.parse(stdin.readLineSync()!);
  print("Indique por favor un número al azar");
  numeroAzar = int.parse(stdin.readLineSync()!);
  //PROCESO-SALIDA Alg
  if (numeroAzar < 74) {
    print("Usted tendrá un 15% de DCTO");
    descuento = totalPagar * 0.15;
    totalConDescuento = totalPagar - descuento;
    print("Se le descuenta un total de:$descuento");
    print("El total a pagar de su compra con DCTO es de:$totalConDescuento");
  } else if (numeroAzar >= 74) {
    print("Usted tendrá un 20% de DCTO");
    descuento = totalPagar * 0.2;
    totalConDescuento = totalPagar - descuento;
    print("Se le descuenta un total de:$descuento");
    print("El total a pagar de su compra con DCTO es de:$totalConDescuento");
  }
}
