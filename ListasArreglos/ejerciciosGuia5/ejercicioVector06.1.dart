void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 06
  /* Diseñe  un  algoritmo  que  lea  dos  vectores  A  y  B  de  7  elementos
  cada  uno  y  multiplique  el  primer elemento de A con el último elemento de
  B y luego el segundo elemento de A por el sexto elemento de  B  y  así
  sucesivamente  hasta  llegar  al  séptimo  elemento  de  A  por  el  primer
  elemento  de  B.  El resultado de la multiplicación almacenarlo en un vector
  C. Mostrar el resultado.
 */
  //DEFINICIÓN Vbles
  List<double> vectorA, vectorB, vectorC = [];
  double multiplicacion;
  vectorA = [2, 4, 6, 8, 10];
  vectorB = [1, 3, 5, 7, 9];
  //ENTRADA Alg
  //PROCESO Alg
  //Ciclo para invertir el vector B
  //Vector invertido = [9,7,5,3,1]
  for (var i = 0; i < vectorA.length; i++) {
    multiplicacion = vectorA[i] * vectorB[vectorB.length - 1 - i];
    vectorC.add(multiplicacion);
  }
  //SALIDA Alg
  print("El resultado es ");
  print(vectorC);
}
