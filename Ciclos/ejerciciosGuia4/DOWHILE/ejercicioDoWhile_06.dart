import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Do-WHILE 06
  /* Leer por cada alumno de Diseño estructurado de algoritmos su número de 
 control y su calificación en cada una de las 5 unidades de la materia. Al final
  que escriba el número de control del alumno que obtuvo mayor promedio. 
  Suponga que los alumnos tienen diferentes promedios.
 */
  //DEFINICIÓN Vbles
  int contador = 0, controlAlumno, unidades = 3, cantAlumno;
  double calificacion = 0, promedio, mayorPromedio = 0, sumaCalificaciones = 0;
  //ENTRADA Alg
  print("Indique la cantidad de alumnos");
  cantAlumno = int.parse(stdin.readLineSync()!);
  //PROCESO Alg
  do {
    print("Digite el control del Alumno #${contador + 1}");
    controlAlumno = int.parse(stdin.readLineSync()!);
    for (int i = 0; i <= unidades; i++){
      print("digite su calificación #${i+1}");
    calificacion = double.parse(stdin.readLineSync()!);
    sumaCalificaciones += calificacion;
    while (calificacion < 0 || calificacion > 6) {
      print("Calificación incorrecta digite de nuevo la calificación");
      calificacion = double.parse(stdin.readLineSync()!);
    }
    }
    promedio = sumaCalificaciones / unidades;
    if (promedio > mayorPromedio) {
      mayorPromedio = promedio;
    }
    contador++;
  } while (contador < cantAlumno);
  //SALIDA Alg
  print("El control del alumno de mayor promedio es $controlAlumno");
}
