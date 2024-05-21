import 'dart:io';
void main() {
  //Daniel Estiven Arboleda Duque - EJE WHILE 06
  /*Calcular cuantos hombres y cuantas mujeres
 se cuentran en un grupo de n alumnos
 suponiendo que los datos son extraidos alumno por alumno
 */
  //DEFINICIÓN Vbles
  double promedio, promedioH, promedioM;
  int cantAlumnos, contadorH = 0, contadorM = 0;
  int contador = 0, edad, sumaH = 0, sumaM = 0, sumaTotal = 0;
  String? genero;
  //ENTRADA Alg
  print("Cúal es la cantidad de alumnos");
  cantAlumnos = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantAlumnos) {
    stdout.writeln("Cúal es su genero y edad");
    genero = stdin.readLineSync();
    edad = int.parse(stdin.readLineSync()!);
    if (genero!.toUpperCase() == "H") {
      sumaH += edad;
      contadorH++;
    } else if (genero.toUpperCase == "M") {
      sumaM += edad;
      contadorM++;
    } else {
      print("Genero invalido");
    }
    contador++;
  }
  sumaTotal = sumaH + sumaM;
  promedio = sumaTotal / cantAlumnos;
  promedioH = sumaH / contadorH;
  promedioM = sumaM / contadorM;
  //SALIDA Alg
  stdout.writeln(
      "El promedio de edades del grupo es: $promedio. El promedio de mujeres del grupo es: $promedioM. El promedio de Hombres del grupo es: $promedioH");
}
