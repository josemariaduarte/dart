/* Aprendemos a utilizar los mixins
   Ejemplo utilizando animales con caracteristicas diferentes
   como volar, nadar y/o caminar
 */
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

// con el with podemos agregar los mixins
class Delfin extends Mamifero with Nadador {}

// separando entre comas podemos varios mixins
class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = new Delfin();
  flipper.nadar();

  final batman = new Murcielago();
  batman.caminar();
  batman.volar();
}
