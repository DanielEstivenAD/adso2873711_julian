void main(List<String> args) {
  //Daniel Estiven Arboleda Duque - EJE VECTOR 08
  /* 
 */
  //DEFINICIÓN Vbles
  List<int> vector = [6, 5, 3, 1, 8, 7, 2, 4];
  int axuliar;
  //ENTRADA Alg
  //PROCESO Alg
  print(vector);
  for (var i = 0; i < vector.length; i++) {
    for (var j = 0; j < vector.length - i - 1; i++) {
      if (vector[j] > vector[j + 1]) {
        axuliar = vector[j];
        vector[j] = vector[j + 1];
        vector[j + 1] = axuliar;
      }
  print(vector);
    }
  }
  //SALIDA Alg
  print(vector);
}
