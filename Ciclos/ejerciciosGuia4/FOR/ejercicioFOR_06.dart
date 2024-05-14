import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE FOR 06
  /*
 Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base  en la sig, tabla
 CATEGORIAEDAD
 Niños 0–12
 Jóvenes 13-29
 Adultos 30-59
 Adultos Mayores60 en adelante
 Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría.
 */
  //DEFINICIÓN Vbles
  int cantPersonas = 5,
      edad,
      edadNinos = 0,
      edadJovenes = 0,
      edadAdultos = 0,
      edadMayores = 0,
      cantNinos = 0,
      cantJovenes = 0,
      cantAdultos = 0,
      cantMayores = 0;
  double peso,
      pesosNinos = 0,
      pesosJovenes = 0,
      pesosAdultos = 0,
      pesosMayores = 0,
      promedioNinos,
      promedioJovenes,
      promedioAdultos,
      promedioMayores,
      promedioPesoN,
      promedioPesoJ,
      promedioPesoA,
      promedioPesoM;
  //ENTRADA Alg
  //PROCESO Alg
  for (int i = 0; i <= cantPersonas; i++) {
    print("Digite su edad");
    edad = int.parse(stdin.readLineSync()!);
    print("Digite su peso");
    peso = double.parse(stdin.readLineSync()!);
    if (edad >= 0 && edad <= 12) {
      pesosNinos += peso;
      edadNinos += edad;
      cantNinos++;
      print("Su categoría es niño");
      print("Su peso es $peso");
    } else if (edad <= 29) {
      pesosJovenes += peso;
      edadJovenes += edad;
      cantJovenes++;
      print("Su categoría es Joven");
      print("Su peso es $peso");
    } else if (edad <= 59) {
      pesosAdultos += peso;
      edadAdultos += edad;
      cantAdultos++;
      print("Su categoría es Adulto");
      print("Su peso es $peso");
    } else {
      pesosMayores += peso;
      edadMayores += edad;
      cantMayores++;
      print("Su categoría es adulto Mayor");
      print("Su peso es $peso");
    }
  }
  promedioNinos = edadNinos / cantNinos;
  promedioPesoN = pesosNinos / cantNinos;
  promedioJovenes = edadJovenes / cantJovenes;
  promedioPesoJ = pesosJovenes / cantJovenes;
  promedioAdultos = edadAdultos /cantAdultos;
  promedioPesoA = pesosAdultos /cantAdultos;
  promedioMayores = edadMayores / cantMayores;
  promedioPesoM = pesosMayores / cantMayores;
  //SALIDA Alg
  print(
      "El promedio de niños es $promedioNinos y el peso promedio es $promedioPesoN");
  print(
      "El promedio de jovenes es $promedioJovenes y el peso promedio es $promedioPesoJ");
  print(
      "El promedio de Adultos es $promedioAdultos y el peso promedio es $promedioPesoA");
  print(
      "El promedio de adultos mayores es $promedioMayores y el peso promedio es $promedioPesoM");
}
