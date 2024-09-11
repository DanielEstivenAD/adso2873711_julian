/* Polimorfismo de pila */
abstract class Stack {
  void push(int value);
  int pop();
}

class ArrayStack implements Stack {
  List<int> _stack = [];

  @override
  void push(int value) {
    _stack.add(value);
  }

  @override
  int pop() {
    return _stack.removeLast();
  }
}

void main() {
  Stack stack = ArrayStack();
  stack.push(10);
  stack.push(20);
  stack.push(23);
  stack.push(89);
  print(stack.pop());  // Salida
}
//El polimorfismo de pila no es un término ampliamente reconocido en la programación. Podría interpretarse como la aplicación de principios polimórficos en el contexto de estructuras de datos como pilas (stacks). Se refiere al uso de clases o interfaces polimórficas para manejar la lógica de una pila.