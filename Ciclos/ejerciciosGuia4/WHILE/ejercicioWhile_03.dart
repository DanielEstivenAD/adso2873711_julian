import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE WHILE 03
  /*Determinar  cuantos  hombres  y  cuantas  mujeres  se  encuentran  en  un
  grupo  de  n  personas, suponiendo que los datos son extraídos alumno por 
  alumno.
 */
  //DEFINICIÓN Vbles
  int cantPersonas, contador = 0, hombres = 0, mujeres = 0;
  String? genero;
  //ENTRADA Alg}
  print("Indique cuantas personas hay en el grupo");
  cantPersonas = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantPersonas) {
    print("Confirme su genero (H) o (M)");
    genero = stdin.readLineSync()!.toUpperCase();
    if (genero == "H") {
      hombres++;
    } else if (genero == "M") {
      mujeres++;
    } else {
      print("No determina como genero");
    }
    contador++;
  }
  //SALIDA Alg
  print("Hay un total de $cantPersonas personas en el grupo");
  print("$hombres son hombres");
  print("$mujeres son mujeres");
}
