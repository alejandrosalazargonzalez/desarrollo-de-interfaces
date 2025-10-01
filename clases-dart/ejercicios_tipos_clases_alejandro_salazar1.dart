/**
 * @author alejandrosalazargonzalez
 * @version 1.0.0
 */

/**
 * ejercicio1
 */
class Temperatura {
  double celsius;

  Temperatura(this.celsius);

  double get fahrenheit => (celsius * 9/5) + 32;
}

/**
 * ejercicio2
 */
class Contrasenia {
  String _valor = '';

  set valor(String contrasenia) {
    if (contrasenia.length >= 8) {
      _valor = contrasenia;
      print('Contrasenia guardada.');
    } else {
      print('Error: La contrasenia debe tener al menos 8 caracteres.');
    }
  }

  String get valor => _valor;
}

/**
 * ejercicio3
 */
class Empleado {
  String nombre;

  Empleado(this.nombre);

  void trabajar() {
    print('$nombre está trabajando.');
  }
}

class Programador extends Empleado {
  Programador(String nombre) : super(nombre);

  @override
  void trabajar() {
    print('Estoy programando en Dart.');
  }
}
abstract class InstrumentoMusical {
  void tocar();
}

/**
 * ejercicio4
 */
class Guitarra extends InstrumentoMusical {
  @override
  void tocar() {
    print('Tocando la guitarra.');
  }
}

class Piano extends InstrumentoMusical {
  @override
  void tocar() {
    print('Tocando el piano.');
  }
}

/**
 * ejercicio5
 */
abstract class Exportable {
  void exportar();
}

class DocumentoPDF implements Exportable {
  @override
  void exportar() {
    print('Exportando documento en PDF...');
  }
}

class ImagenPNG implements Exportable {
  @override
  void exportar() {
    print('Exportando imagen en PNG...');
  }
}

/**
 * ejercicio6
 */
mixin Recargable {
  void recargar() {
    print('Recargando...');
  }
}

class Telefono with Recargable {}

class Linterna with Recargable {}

/**
 * ejercicio7
 */
class ColorRGB {
  final int r;
  final int g;
  final int b;

  const ColorRGB(this.r, this.g, this.b);
}

void main() {
  var temp1 = Temperatura(0);
  var temp2 = Temperatura(25);
  var temp3 = Temperatura(100);

  print('Celsius: ${temp1.celsius} -> Fahrenheit: ${temp1.fahrenheit}');
  print('Celsius: ${temp2.celsius} -> Fahrenheit: ${temp2.fahrenheit}');
  print('Celsius: ${temp3.celsius} -> Fahrenheit: ${temp3.fahrenheit}');

  var contrasenia = Contrasenia();

  contrasenia.valor = '1234567';
  contrasenia.valor = '12345678';
  print('Contrasenia actual: ${contrasenia.valor}');

  contrasenia.valor = 'abc'; 
  print('Contrasenia actual: ${contrasenia.valor}');

  var p = Programador('Carlos');
  p.trabajar();

  List<InstrumentoMusical> instrumentos = [Guitarra(), Piano()];
  for (var instrumento in instrumentos) {
    instrumento.tocar();
  }

  List<Exportable> elementos = [DocumentoPDF(), ImagenPNG()];

  for (var elemento in elementos) {
    elemento.exportar();
  }

  var telefono = Telefono();
  var linterna = Linterna();

  telefono.recargar();
  linterna.recargar();

  const color1 = ColorRGB(255, 0, 0);
  const color2 = ColorRGB(255, 0, 0);

  print('¿Son idénticos? ${identical(color1, color2)}'); // true
  }