import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL DOBLE 05
  /*
 Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la cantidad pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%. Elaborar un programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, para pago a crédito el usuario ingresa 2
 */
  //DEFINICIÓN Vbles
  int cantiProducto, cantiBrocha, cantiRodillos, tipoCompra;
  double precioUnitarioBrocha,
      descuento,
      TotalPagar,
      precioUnitarioRodillo,
      descuentoBrocha,
      descuentoRodillo,
      precioTotalBrocha,
      precioTotalRodillo,
      totalCompra,
      precioDescuentoBrocha,
      precioDescuentoRodillo;
  //ENTRADA Alg
  print("indique la cantidad de brocha a comprar y su precio untario");
  cantiBrocha = int.parse(stdin.readLineSync()!);
  precioUnitarioBrocha = double.parse(stdin.readLineSync()!);
  print("indique la cantidad de rodillo a comprar y su precio untario");
  cantiRodillos = int.parse(stdin.readLineSync()!);
  precioUnitarioRodillo = double.parse(stdin.readLineSync()!);
  stdout.writeln("Confirme el tipo de pago entre 1 (contado) y 2 (crédito)");
  tipoCompra = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  precioTotalBrocha = precioUnitarioBrocha * cantiBrocha;
  descuentoBrocha = precioTotalBrocha * 0.2;
  precioDescuentoBrocha = precioTotalBrocha - descuentoBrocha;
  /*-----------------------------------*/
  precioTotalRodillo = precioUnitarioRodillo * cantiRodillos;
  descuentoRodillo = precioTotalRodillo * 0.15;
  precioDescuentoRodillo = precioTotalRodillo - descuentoRodillo;
  /*-----------------------------------*/
  totalCompra = precioDescuentoBrocha + precioDescuentoRodillo;
  if (tipoCompra == 1) {
    print("Su pago se realizará en efectivo");
    descuento = totalCompra * 0.07;
    TotalPagar = totalCompra - descuento;
  print("El total a pagar de su compra es de: $TotalPagar");
  } else {
    print("Su pago se realizará por crédito");
  print("El total a pagar de su compra es de: $totalCompra");
  }
  //SALIDA Alg
}
