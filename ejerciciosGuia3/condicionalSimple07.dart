import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 07
  /*
 Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.
 */
  //DEFINICÍON vbles
  double montoCliente, cantiCuota, valorfianza;
  //ENTRADA Alg
  print("Indique por favor cuanto dar de monto para la fianza");
  montoCliente = double.parse(stdin.readLineSync()!);
  print("Indique por favor a cuantos meses desea la fianza");
  cantiCuota = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (montoCliente < 50000) {
    print("Tendrá un incremento del 3% en su fianza");
    valorfianza = (montoCliente * 0.03) / cantiCuota;
    print("La cuota que debe pagar es de: $valorfianza");
  } else if (montoCliente > 50000) {
    print("Tendrá un incremento del 2% en su fianza");
    valorfianza = (montoCliente * 0.02) / cantiCuota;
    print("La cuota que debe pagar es de: $valorfianza");
  }
  //SALIDA Alg
}
