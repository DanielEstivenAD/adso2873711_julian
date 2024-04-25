import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL DOBLE 04
  /*
Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000 la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años. La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada pago mensual ingresando el valor de la casa.
 */
  //DEFINICIÓN Vbles
  double pagoInicial, valorCasa, valorCuotaMensual, ingreso, valorRestante;
  //ENTRADA Alg
  print("Indique el valor de la casa");
  valorCasa = double.parse(stdin.readLineSync()!);
  print("Indique la cantidad de sus ingresos");
  ingreso = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  if (ingreso >= 800000) {
    pagoInicial = valorCasa * 0.15; //15%
    valorRestante = valorCasa - pagoInicial;
    valorCuotaMensual = valorRestante / 120;
  } else {
    pagoInicial = valorCasa * 0.3; //30%
    valorRestante = valorCasa - pagoInicial;
    valorCuotaMensual = valorRestante / 84;
  }
  //SALIDA Alg
  print("El valor de la casa es de: $valorCasa");
  print("La cantidad que debe dar en su pago incial es de: $pagoInicial");
  print("La cantidad de la cuota mensual es de: $valorCuotaMensual");
}
