/* Polimorfismo inclusivo */
class Animal {
  void makeSound() {
    print('El animal hace un sonido.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('El perro ladra.');
  }
}
class Cat extends Animal{
  @override
  void makeSound(){
    print('El gato maulla');
  }
}

void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();
  myCat.makeSound();
  myDog.makeSound();  // Salida: El perro ladra.
}
//También conocido como polimorfismo de subtipos, ocurre cuando una subclase puede ser tratada como una instancia de su superclase. Esto permite que una función, método o estructura de datos trabaje con objetos de diferentes clases que comparten una interfaz común.