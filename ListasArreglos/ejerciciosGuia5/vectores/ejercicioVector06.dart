void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 06
  /* 
 */
  //DEFINICIÓN Vbles
  List<double> vectorA, vectorB, vectorC = [];
  List<double> vectorBInvertido = [];
  double multiplicacion;
  vectorA = [2, 4, 6, 8, 10];
  vectorB = [1, 3, 5, 7, 9];
  //ENTRADA Alg
  //PROCESO Alg
  //Ciclo para invertir el vector B
  //Vector invertido = [9,7,5,3,1]
  for (var i = vectorB.length - 1; i >= 0; i--) {
    vectorBInvertido.add(vectorB[i]);
  }
  //Ciclo para multiplcar los vectores invertidos
  for (var i = 0; i < vectorA.length; i++) {
    multiplicacion = vectorA[i] * vectorBInvertido[i];
    vectorC.add(multiplicacion);
  }
  //SALIDA Alg
  print("El resultado es ");
  print(vectorC);
}
