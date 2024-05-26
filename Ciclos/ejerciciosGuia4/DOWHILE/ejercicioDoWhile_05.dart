void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE Do-WHILE 05
  /*Calcular la suma siguiente:100 + 98 + 96 + 94 + . . . + 0 en este orden
 */
  //DEFINICIÓN Vbles
  int sum = 0, resultado = 100, resta = 2;
  //ENTRADA - PROCESO Alg
  do {
    sum += resultado;
    resultado -= resta;
    print(sum);
  } while (resultado >= 0);
  //SALIDA Alg
  print("La suma es: $sum");
}
