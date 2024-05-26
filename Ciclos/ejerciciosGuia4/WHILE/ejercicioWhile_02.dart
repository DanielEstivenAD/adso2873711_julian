import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE WHILE 02
  /*En una empresa se requiere calcular el salario semanal de cada uno de los n
  obreros que laboran en ella.
  El salario se obtiene de la sig. forma:
  Si el obrero trabaja 40 horas o menos se le paga $20 por hora. Si trabaja más
  de 40 horas se le paga $20 
  por cada una de las primeras 40 horas y $25 por cada hora extra.
 */
  //DEFINICIÓN Vbles
  int cantTrabajadores,
      contador = 0,
      valorHora = 20,
      valorExtra = 25,
      horasrecurrentes = 40;
  double cantHoras, horasExtra, sueldo=0;
  //ENTRADA Alg
  stdout.write("Indique la cantidad de trabajadores: ");
  cantTrabajadores = int.parse(stdin.readLineSync()!);
  //PROCESO - SALIDA Alg
  while (contador < cantTrabajadores) {
    print("Confirme cuantas horas trabajó el trabajador ${contador+1}?");
    cantHoras = double.parse(stdin.readLineSync()!);
    if (cantHoras <= horasrecurrentes && cantHoras > 0) {
      sueldo = valorHora.toDouble() * cantHoras;
    } else if (cantHoras > horasrecurrentes) {
      horasExtra = cantHoras - horasrecurrentes;
      sueldo = (horasrecurrentes * valorHora) + (valorExtra*horasExtra);
    }
    contador++;
  print("El sueldo total del trabajador es $sueldo");
  print("-----------------------------------------");
  }
}