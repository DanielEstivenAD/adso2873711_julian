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
  int primaria = 0,
      secundaria = 0,
      tecnico = 0,
      profesional = 0,
      posgrado = 0,
      contador = 0;
  double promPrimaria, promSecun, promTec, promProfe, promPos;
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
        break;
      case "SECUNDARIA":
        secundaria++;
        break;
      case "TECNICO":
        tecnico++;
        break;
      case "PROFESIONAL":
        profesional++;
        break;
      case "POSGRADO":
        posgrado++;
        break;
      default:
        print("Opción incorrecta");
    }
    contador++;
    print("Entrevistar a otra persona?. (SI) o (NO)");
    opcion = stdin.readLineSync();
  } while (opcion!.toUpperCase() != "NO");
  promPrimaria = primaria / contador;
  promSecun = secundaria / contador;
  promTec = tecnico / contador;
  promProfe = profesional / contador;
  promPos = posgrado / contador;
  //SALIDA Alg
  print(" el promedio de los de primaria es de $promPrimaria de un total de $contador");
  print(" el promedio de los de secundaria es de $promSecun de un total de $contador");
  print(" el promedio de los de tecnico es de $promTec de un total de $contador");
  print(" el promedio de los de profesional es de  $promProfe de un total de $contador");
  print(" el promedio de los de posgrado es de  $promPos de un total de $contador");
}
