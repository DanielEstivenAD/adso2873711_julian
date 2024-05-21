import 'dart:ffi';

void main(List<String> args) {
  //Definición y sdignación de Lista vacía
  List<int> numeros1 = [];
  //Definición/Asignación Lista con elementos
  List<int> pesos = [65, 75, 70, 48, 65, 55, 48];
  List<String> frutas = ['Manzana', 'Pera', 'Fresa'];
  List<bool> estados = [
    true,
    false,
    false,
    true,
  ];
  List<double> estaturas = [1.65, 1.52, 1.55, 1.80];
  // Definición/Asignación de Listas dinamicas
  List<dynamic> listaDina = [30, 4.5, 'Pepe', true, ['Mango','Mora',frutas], pesos];

  // Acceder a los elementos
  print(pesos);
  print(frutas);
  print(estados);
  print(estaturas);
  print(listaDina);
  print(frutas[1]);//Pera
  print(pesos[5]);//55
  print(listaDina[2]);//pepe
  print(listaDina[4][2]);//fresa
  print(listaDina[4][2][0]);//manzana
}
