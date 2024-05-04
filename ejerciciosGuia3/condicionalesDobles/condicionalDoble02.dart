import 'dart:io';
void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL DOBLE 02
  /*
 Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
• Si trabaja 40 horas o menos se le paga $16 por hora
• Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
extra.
 */
  //DEFINICIÓN Vbles
  double horasTrabajadas,
      horasExtra,
      pagoTotal,
      valorHora;
  //ENTRADA Alg
  print("Ingrese por favor cuantas horas trabajó");
  horasTrabajadas = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  valorHora = 16; //valor de cada hora que no sea extra
  if (horasTrabajadas > 40) {
    horasExtra = horasTrabajadas - 40;
    pagoTotal = (40 * valorHora)+ (horasExtra*20);
  } else {
    pagoTotal = horasTrabajadas * valorHora;
  }
  //SALIDA Alg
  print("El salario que tendrá será de:$pagoTotal");
}
