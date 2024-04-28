import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 02
  /*
 Dado el monto de una compra calcular el descuento considerado
• Descuento es 20% si el monto es mayor a 20000 pesos.
• Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000 pesos.
• no hay descuento si el monto es menor o igual a 10000 pesos.
 */
  //DEFINICIÓN Vbles
  double montoCompra, descuento, valorPagar;
  //ENTRADA Alg
  print("Indique por favor el valor de su compra");
  montoCompra = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  descuento = 0;
  if (montoCompra > 20000) {
    descuento = montoCompra * 0.2;
    print("Usted tendrá un descuento del 20% en su compra");
  } else if (montoCompra > 10000 || montoCompra == 20000) {
    descuento = montoCompra * 0.1;
    print("Usted tendrá un descuento del 10% en su compra");
  } else {
    print("Usted no tendrá un descuento");
  }
  valorPagar = montoCompra - descuento;
  print("El valor a pagar por su compra es de $valorPagar");
  //SALIDA Alg
}
