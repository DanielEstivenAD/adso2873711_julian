/* Polimorfismo paramétrico */
class Box<Tipo> {
  Tipo value;

  Box(this.value);

  void display() {
    print('Valor: $value');
  }
}

void main() {
  var intBox = Box<int>(10);
  var stringBox = Box<String>('Dart');
  var sBox = Box<String>('Ayuda');
  var doubleBox = Box<double>(23.8);

  intBox.display();    // Salida: Valor: 10
  stringBox.display(); // Salida: Valor: Dart
  sBox.display(); // Salida: Valor: Dart
  doubleBox.display();

}
//Este tipo de polimorfismo se refiere a la capacidad de escribir código genérico que funcione con cualquier tipo de dato. En Dart, esto se logra mediante el uso de generics. Permite que clases y métodos trabajen con diferentes tipos de datos sin necesidad de reescribir el código para cada tipo.