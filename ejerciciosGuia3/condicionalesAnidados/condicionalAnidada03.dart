import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL ANIDADA 03
  /*
 En una fábrica de computadoras se planea ofrecer a los clientes un descuento que dependerá del
número de computadoras que compre. Si las computadoras son menos de cinco se les dará un 10%
de descuento sobre el total de la compra; si el número de computadoras es mayor o igual a cinco
pero menos de diez se le otorga un 20% de descuento; y si son 10 o más se les da un 40% de
descuento. El precio de cada computadora es de $1100000
 */
  //DEFINICIÓN Vbles
  double cantPc; // la cantidad de computadoras a comprar
  double montoCompra, descuento, valorPagar;
  //ENTRADA Alg
  print("ingrese por favor la cantidad de computadoras a comprar");
  cantPc = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  montoCompra = 1100000 * cantPc;
  descuento = 0;
  if (cantPc < 5) {
    descuento = montoCompra * 0.1;
    print("Usted tendrá un 10% DCTO en su compra");
  } else if (cantPc >= 5 && cantPc < 10) {
    descuento = montoCompra * 0.2;
    print("Usted tendrá un 20% DCTO en su compra");
  } else if (cantPc > 10) {
    descuento = montoCompra * 0.4;
    print("Usted tendrá un 40% DCTO en su compra");
  } else {}
  valorPagar = montoCompra - descuento;
  //SALIDA Alg
  print("El valor total de su compra es de $valorPagar");
}
