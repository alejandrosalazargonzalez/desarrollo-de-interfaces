/**
 * @author: alejandrosalazargonzalez
 * @version: 1.0.0
 */

/**
 * ejercicio 1
 */
class Pelicula {
  String titulo;
  int anio;

  Pelicula(this.titulo,this.anio);
  void mostrar() => print("Pelicula: $titulo ($anio)");
}

/**
 * ejercicio 2
 */
class Tarea{
  String descripcion;
  bool completada;
  Tarea(this.descripcion,this.completada);
  Tarea.incompleta(this.descripcion):completada= false;
  void mostrar() => print("Tarea: $descripcion - Completada: $completada");
}

/**
 * ejercicio 3
 */
class Circulo{
  double area;
  double radio;
  Circulo(this.radio) : area = 3.14 * radio * radio; 
  void mostrar() => print("Circulo: radio=$radio, area=$area");
}

/**
 * ejercicio 4
 */
class Mensaje{
  String texto;
  String prioridad;
  Mensaje(this.texto,{this.prioridad = "normal"});
  void mostrar()=>print("Mensaje: $texto, prioridad: $prioridad");
}

/**
 * ejercicio 5
 */
class Moneda{
  final codigo;
  final simbolo;
  const Moneda(this.codigo,this.simbolo); 
  void mostrar()=>print("codigo:$codigo, simbolo:$simbolo");
}

/**
 * ejercicio 6
 */
class Alumno{
  String nombre;
  double nota;
  Alumno(this.nombre,this.nota);
  Alumno.sinNota(this.nombre):nota=5;

  void mostrar()=>print("$nombre tiene un $nota");
}

/**
 * ejercio 7
 */
class Sesion{
  static final Sesion _instancia = Sesion._interna();
factory Sesion() {
return _instancia;
}
Sesion._interna();
}

void main(){
  Pelicula pelicula = Pelicula("'Vandidos Dart'", 2025);
  pelicula.mostrar();

  var tarea1 =Tarea("programar en dart", true);
  tarea1.mostrar();
  var tarea2 = Tarea.incompleta("programar en php");
  tarea2.mostrar();
  var circulo = Circulo(15);
  circulo.mostrar();

  var mensaje1 = Mensaje("Aprobar desarrollo de interfaces");
  var mensaje2 = Mensaje("Tener vida social", prioridad: "baja");
  mensaje1.mostrar();
  mensaje2.mostrar();

  var moneda1 = const Moneda("USD", "\$");
  var moneda2 = const Moneda("USD", "\$");
  moneda1.mostrar();
  moneda2.mostrar();
  print(identical(moneda2, moneda1));

  var alumno1 = Alumno("Cesar", 8);
  var alumno2 = Alumno.sinNota("Alejandro");
  
  alumno1.mostrar();
  alumno2.mostrar();

  var sesion1 = Sesion();
  var sesion2 = Sesion();
  print(identical(sesion2, sesion1));
}