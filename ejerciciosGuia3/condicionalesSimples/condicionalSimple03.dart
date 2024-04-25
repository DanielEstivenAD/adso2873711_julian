import 'dart:io';
void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 01
  /*
 El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para
 sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio
 unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al
 precio normal.
 */
  //DEFINICÍON vbles
  String? modeloTraje;
  double cantiTrajes, valorTrajes, totalPagar, descuento;
  // ENTRADA Alg
  print("Indique el modelo del traje que desea");
  modeloTraje = stdin.readLineSync();
  print("Confirme por favor el valor del traje");
  valorTrajes = double.parse(stdin.readLineSync()!);
  print("Indique la cantidad de trajes que desea");
  cantiTrajes = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  totalPagar = valorTrajes * cantiTrajes;
  if (cantiTrajes >= 3) {
    descuento = totalPagar * 0.17;
    totalPagar = totalPagar - descuento;
    print("Debido a la cantidad de trajes que ordenó se le da un 17%");
    print("Por lo que se descuenta una cantidad de: $descuento");
  }
  //SALIDA Alg
  print("Su total a pagar es:$totalPagar");
}
