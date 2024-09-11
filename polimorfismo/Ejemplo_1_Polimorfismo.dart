/*Polimorfismo de sobrecarga  */
class MathOperations {
  // Método para sumar dos números enteros
  int sum(int a, int b) => a + b;

  // Método para sumar tres números enteros
  int sumThree(int a, int b, int c) => a + b + c;
}

void main() {
  var math = MathOperations();
  
  print(math.sum(2, 3));       // Salida: 5
  print(math.sumThree(2, 12, 4)); // Salida: 18
}
//Este tipo de polimorfismo ocurre cuando múltiples métodos tienen el mismo nombre, 
//pero diferentes firmas (es decir, diferentes tipos o números de parámetros). En lenguajes 
//que soportan sobrecarga de métodos, puedes definir múltiples versiones de un método con diferentes parámetros. 
//Sin embargo, en Dart, la sobrecarga directa no está soportada, pero se puede simular usando parámetros opcionales o nombrados.

