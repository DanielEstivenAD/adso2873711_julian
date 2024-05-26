import 'dart:io';

void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Do-WHILE 09
  /*Escribir un programa que muestre el siguiente menú y que permita pasar 
 magnitudes de grados a radianes y de radianes a grados.
 1.Pasar de grados a radianes
 2.Pasar de radianes a grados
 3.Salir del programa 
 */
  //DEFINICIÓN Vbles
  int conversion;
  double grado,
      radian,
      gradoRadian = 0.0174533,
      radianGrad = 57.2958,
      resultado=0;
  //ENTRADA Alg
  //PROCESO Alg
  do {
    print("Digite la opción deseada");
    print("1.Pasar de grados a radianes");
    print("2.Pasar de radianes a grados");
    print("3.Salir del programa");
    conversion = int.parse(stdin.readLineSync()!);
    switch (conversion) {
      case 1:
        print("Ingrese la cantidad de grados a convertir");
        grado = double.parse(stdin.readLineSync()!);
        resultado = grado * gradoRadian;
        print("El resultado es $resultado");
        break;
      case 2:
        print("Ingrese la cantidad de radianes a convertir");
        radian = double.parse(stdin.readLineSync()!);
        resultado = radian * radianGrad;
        print("El resultado es $resultado");
        break;
      default:
        print("Opción incorrecta");
    }
  } while (conversion != 3);
  //SALIDA Alg
}
