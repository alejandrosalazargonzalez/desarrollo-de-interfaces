/**
 * Author: alejandrosalazargonzalez
 * Version: 1.0.0 
 */
void presentacion(String nombre, [int edad = 0]){
print("hola soy $nombre y tengo $edad años");
}

void main(){
  presentacion("Alejandro");
  presentacion("Alejandro", 21);
}