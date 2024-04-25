import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 04
  /*
Hacer un algoritmo que imprima el nombre de un artículo, clave, precio original y su precio con
descuento. El descuento lo hace en base a la clave, si la clave es 1 el descuento es del 10% y si la clave
es 2 el descuento en del 20% (solo existen dos claves).
 */
  //DEFINICÍON vbles
  String? nomArticulo;
  double precioOriginal, descuento, clave, precioDescuento;
  //ENTRADA Alg
  print("Indique el nombre del articulo");
  nomArticulo = stdin.readLineSync();
  print("Confirme por favor el valor del articulo");
  precioOriginal = double.parse(stdin.readLineSync()!);
  print("Confirme por favor la clave indicada");
  clave = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (clave == 1) {
    descuento = precioOriginal * 0.1;
    precioDescuento = precioOriginal - descuento;
    print("Clave exitosa, usted obtuvo un descuento del 10%");
    print("El total a pagar es:$precioDescuento");
  } else if (clave == 2) {
    descuento = precioOriginal * 0.2;
    precioDescuento = precioOriginal - descuento;
    print("Clave exitosa, usted obtuvo un descuento del 20%");
    print("El total a pagar es:$precioDescuento");
  } else {
    print("Clave incorrecta");
  }
  //SALIDA Alg
    print("El precio a pagar es de:$precioOriginal");
}
