import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Do-WHILE 03
  /*En la Cámara de Diputados se levanta una encuesta con todos los integrantes 
 con el fin de determinar que porcentaje de los ndiputados esta a favor del 
 Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se 
 abstiene de opinar.El programa debe preguntar si se desea continuar ingresando 
 datos.
 */
  //DEFINICIÓN Vbles
  double porcentajeFavor, porcentajeContra;
  int contContra = 0, contFavor = 0, totalVotos = 0;
  String? opcion, opciontratado;
  //ENTRADA - PROCESO Alg
  do {
    print("Sr. diputado está a favor del tratado? (F) (C)");
    opciontratado = stdin.readLineSync();
    if (opciontratado!.toUpperCase() == "F") {
      contFavor++;
      totalVotos++;
    } else if (opciontratado.toUpperCase() == "C") {
      contContra++;
      totalVotos++;
    } else {
      print("Voto nulo");
    }
    print("Hasta el momento van $totalVotos votos");
    print("Desea ingresar otro voto diputado? (si) (no)");
    opcion = stdin.readLineSync();
    print("*" * 30);
  } while (opcion!.toLowerCase() != "no");
  porcentajeFavor = (contFavor * 100) / totalVotos;
  porcentajeContra = (contContra * 100) / totalVotos;
  //SALIDA Alg
  print("El total de votos fue: $totalVotos");
  print("EL porcentaje a favor es: $porcentajeFavor");
  print("El porcentaje en contra es: $porcentajeContra");
}
