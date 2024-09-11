
class Animal {
    String color;
    String especie;
    double tamanio;
    Animal(this.color, this.especie, this.tamanio);
  void hacerSonido() {
    print('El animal hace un sonido');
  }
}

//La clase Perro hereda de Animal lo que este contiene
class Perro extends Animal {
  String raza;
  Perro(this.raza, colorUsu, especieUsu, tamUsu) : super(colorUsu, especieUsu, tamUsu);
  @override //Se soobreescribe el método del padre
  void hacerSonido() {
    print('El perro ladra');
  }

  void mostrarInfo() {
    print("""
      Especie: $especie.
      Color: $color.
      Tamaño: $tamanio.
      Raza: $raza.
    """);
  }
}

class Gato extends Animal {
  bool estaVacunado;
  Gato(this.estaVacunado, colorUsu, especieUsu, tamUsu) : super(colorUsu, especieUsu, tamUsu);
  @override
  void hacerSonido() {
    print('El gano maulla');
  }
    void mostrarInfo() {
    print("""
      Especie: $especie.
      Color: $color.
      Tamaño: $tamanio.
      Esta vacunado: ${estaVacunado ? "Si" : "No"}.
    """);
  }
}

void main(List<String> args) {
  Perro myDog = Perro('Pitbull','negro','canino',20.0);
  myDog.hacerSonido();
  myDog.mostrarInfo();
  Gato myCat = Gato(true, 'blanco', 'felino', 10.0);
  myCat.hacerSonido();
  myCat.mostrarInfo();
}
