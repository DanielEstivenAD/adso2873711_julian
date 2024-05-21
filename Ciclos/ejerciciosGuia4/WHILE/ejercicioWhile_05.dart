import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE WHILE 05
  /*
 Obtener el promedio de calificaciones de un grupo de n alumnos.
 */
  //DEFINICIÓN Vbles
  int cantAlumnos = 0, contador = 0;
  double notaAlumno = 0, promedioNotas, totalNota = 0;
  //ENTRADA Alg
  print("Indique la cantidad de alumnos");
  cantAlumnos = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  while (contador < cantAlumnos) {
    print("Confirme la calificación del alumno ${contador + 1} de (0 a 5)");
    notaAlumno = double.parse(stdin.readLineSync()!);
    if (notaAlumno >= 0 && notaAlumno <= 5) {
      totalNota += notaAlumno;
    } else {
      print("Nota mal ingresada");
    }
    contador++;
  }
  promedioNotas = totalNota / cantAlumnos;
  //SALIDA Alg
  print("El promedio de calificaciones en el grupo es de $promedioNotas");
}
