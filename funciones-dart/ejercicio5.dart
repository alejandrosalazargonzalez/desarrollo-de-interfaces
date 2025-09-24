void presentacion(String nombre, [int edad = 0]){
print("hola soy $nombre y tengo $edad años");
}

void main(){
  presentacion("Alejandro");
  presentacion("Alejandro", 21);
}