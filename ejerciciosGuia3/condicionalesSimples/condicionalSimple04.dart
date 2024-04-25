import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 04
  /*
  CORRECCIÓN
Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
es 2 el descuento en del 20% (solo existen dos claves).
 */
  //DEFINICÍON vbles
  String? nomArticulo;
  int clave;
  double precioOriginal, descuento, precioDescuento;
  //ENTRADA Alg
  print("Indique el nombre del articulo");
  nomArticulo = stdin.readLineSync();
  print("Confirme por favor la clave. Solamente 1 y 2");
  clave = int.parse(stdin.readLineSync()!);
  print("Confirme por favor el valor del articulo");
  precioOriginal = double.parse(stdin.readLineSync()!);
  //PROCESO/SALIDA Alg
  if(clave== 1 || clave==2){
  descuento = precioOriginal * 0.1; //Si clave 1,10%
  if (clave == 2) {
    descuento = precioOriginal * 0.2; //Si clave 2,20%
  }
  precioDescuento = precioOriginal - descuento;
    print("El valor a pagar por el producto es: $precioDescuento");
  }
  if(clave < 1||clave > 2){
    print("Clave incorrecta");
    print("El valor a pagar por el producto es: $precioOriginal");
  }
}
