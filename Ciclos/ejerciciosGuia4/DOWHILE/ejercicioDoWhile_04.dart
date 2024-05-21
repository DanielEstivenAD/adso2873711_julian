import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE DO-WHILE 04
  /*
 Un censador recopila ciertos datos aplicando encuestas para el último Censo 
 Nacional de Población y Vivienda. Desea obtener de todas las personas que 
 alcance a encuestar en un día, que porcentaje tiene  estudios  de  primaria, 
 secundaria,  carrera  técnica,  estudios  profesionales  y  estudios  de 
 posgrado.El programa debe preguntar si se desea continuar ingresando datos.
 */
  //DEFINICIÓN Vbles
  String? estudio, opcion;
  int primaria = 0, secundaria = 0, tecnico = 0, profesional = 0, posgrado = 0;
  double promPrimaria;
  //ENTRADA Alg
  //PROCESO Alg
  do {
    print("Buen día. A continuación realizará una encuesta");
    print("Tiene las siguientes opciones");
    print("Primaria");
    print("Secundaria");
    print("Tecnico");
    print("Profesional");
    print("Posgrado");
    print("Confirme por favor sus ultimos estudios");
    estudio = stdin.readLineSync();
    switch (estudio!.toUpperCase()) {
      case "PRIMARIA":
        primaria++;
    }
    print("Entrevistar a otra persona?. (SI) o (NO)");
    opcion = stdin.readLineSync();
  } while (opcion != "NO");
  //SALIDA Alg
}
