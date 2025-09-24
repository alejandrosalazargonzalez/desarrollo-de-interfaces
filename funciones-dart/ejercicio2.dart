void saludo(String nombre,[String apellido = " "] ){
  print("hola $nombre $apellido");
}

void main(){
  saludo("Alejandro");
  saludo("Alejandro", "Salazar");
}