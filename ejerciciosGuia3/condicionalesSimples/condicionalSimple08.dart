import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL SIMPLE 0
  /*
8.	Dada la duración en minutos de una llamada calcular el costo, considerando:
• Hasta tres minutos el costo es 600
• Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
 */
  //DEFINICÍON vbles
  double duracionLlamada, costoLlamada, minutosAdicionales;
  //ENTRADA Alg
  print("Indique por favor la duración de la llamada");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  costoLlamada = 600;
  if (duracionLlamada > 3) {
    minutosAdicionales = duracionLlamada - 3;
    costoLlamada = minutosAdicionales * 150 + 600;
  }
  //SALIDA Alg
  print("El costo de la llamada es de: $costoLlamada");
}