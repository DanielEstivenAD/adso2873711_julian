import 'dart:io';

void main(List<String> args) {
  // Agregar elementos a la lista - ADD

  List<String> nombres = [];
  String? nombre;
  int cantidad = 5;
  //Ciclo para llenar nombres
  for (int i = 0; i < cantidad; i++) {
    print("Digite el nombre #${i + 1}");
    nombre = stdin.readLineSync()!;
    nombres.add(nombre);
    print(nombres);
  }
  print('*' * 30);
  print(nombres);
  //Recorrer la Lista para mostrar
  for (int i = 0; i < cantidad; i++) {
    print("Nombre #${i + 1}: ${nombres[i]}");
  }
}
