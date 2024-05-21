void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Modificar elemntos de una Lista/Arreglo - Vector
  numeros[3] = 20;
  numeros[9] = 30;
  print(numeros);
  //Propiedad Length
  print("Tamaño de la lista: $numeros");
  print("Ultimo elemento: ${numeros[numeros.length - 1]}");
  print("Ultimo elemento: ${numeros.last}");
  // Metodos ADD() - REMOVE() - REMOVEAT()
  List<int> numeros2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(numeros2);
  numeros2.remove(5); //Elimina toda la casilla
  print(numeros2);
  print(numeros2[4]);
  numeros2.removeAt(1);
}
