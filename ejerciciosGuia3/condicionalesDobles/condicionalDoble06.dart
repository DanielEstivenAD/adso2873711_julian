import 'dart:io';

void main() {
  //Daniel Estiven Arboleda Duque - EJE CONDICIONAL DOBLE 06
  /*
 El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
 70%= Pino
 20%=Roble
 10%=Cedro
 Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
 50%=pino
 30%=Roble
 20%=Cedro
 El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.
 */
  //DEFINICIÓN Vbles
  double bosqueHectareas,
      cantidadPino,
      cantidadRoble,
      cantidadCedro,
      porcentajePino,
      porcentajeRoble,
      porcentajeCedro,
      bosqueMetros;
  //ENTRADA Alg
  print("Por favor Indique la cantidad de hectareas del bosque");
  bosqueHectareas = double.parse(stdin.readLineSync()!);
  //PROCESO Alg
  bosqueMetros = bosqueHectareas * 100000; // se convierten hectareas en mestros cuadrados
  cantidadPino = (bosqueMetros * 8) / 10;
  cantidadRoble = (bosqueMetros * 15) / 15;
  cantidadCedro = (bosqueMetros * 10) / 18;
  if (bosqueMetros > 1000000) {
    print("Se plantará un 70% de Pinos, un 20% de Robles y un 10% de Cedros");
    porcentajePino = cantidadPino * 0.7;
    porcentajeRoble = cantidadRoble * 0.2;
    porcentajeCedro = cantidadCedro * 0.1;
  } else {
    print("Se plantará un 50% de Pinos, un 30% de Robles y un 20% de Cedros");
    porcentajePino = cantidadPino * 0.5;
    porcentajeRoble = cantidadRoble * 0.3;
    porcentajeCedro = cantidadCedro * 0.2;
  }
  //SALIDA Alg
  print(
      "Se plantarán $porcentajePino pinos, se plantarán $porcentajeRoble y se plantarán $porcentajeCedro en $bosqueMetros metros cuadrados de bosque");
}
