/* Polimorfismo de coerción */
void printNumber(num value) {
  print('El valor es $value');
}

void main() {
  int a = 5;
  double b = 7.5;
  int c = 4;

  // Dart automáticamente convierte el int en num (polimorfismo de coerción)
  printNumber(a);  // Salida: El valor es 5

  // Dart automáticamente convierte el double en num (polimorfismo de coerción)
  printNumber(b);  // Salida: El valor es 7.5
  printNumber(c);
}
//El polimorfismo de coerción ocurre cuando un lenguaje de programación convierte automáticamente un tipo de dato en otro para cumplir con los requisitos de una operación o un método. Es una forma de adaptar diferentes tipos de datos para que sean compatibles con un contexto particular.