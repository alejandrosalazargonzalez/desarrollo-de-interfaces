import 'dart:async';
import 'dart:collection';

/**
 * @author alejandrosalazargonzalez
 * @version 1.0.0
 */
void main(){
  /**
   * ejercicio 1
   */
  List<int> notas =[2,3,4,8,5,6];
  notas.add(10);
  print("primera nota: ${notas.first}, ultima nota: ${notas.last}\n");
  var suma = notas.reduce((total,nota)=>total + nota);
  print ("la media es :${suma/notas.length}");

  /**
   * ejercicio 2
   */
  Set<String> correos = {"ultrajesuskill@gmail.com","germanyakuza05@gmail.com","marcosbocadillo@gmail.com", "ultrajesuskill@gmail.com"};
  print(correos);
  correos.add("luis@mail.com");
  print("esta luis@mail.com ? : ${correos.contains("luis@mail.com")}");

  /**
   * ejercicio 3
   */
  Map<String,num> productos ={"pan":1.30,"leche":1.0,"huevos":3.10};
  print("el precio de la leche es ${productos.containsKey("leche")}");
  productos["cafe"] = 3.0;
  productos.forEach((producto,precio)=>print("$producto → $precio"));

  /**
   * ejercicio 4
   */
  Queue<String> tareas = Queue.from(["Lavar los platos","Tender la ropa","Programar"]);
  print(tareas.removeFirst());
  tareas.add("Pasear al perro");
  print(tareas);

  /**
   * ejercicio 5
   */
  SplayTreeSet<int> ordenados = new SplayTreeSet();
  ordenados.addAll([5,3,9,1,4]);
  print(ordenados);
  ordenados.remove(3);
  print(ordenados);
}