/**
 * Author: alejandrosalazargonzalez
 * Version: 1.0.0 
 */
void onPressed(callback) {
  callback();
}

void main() {
  onPressed(() {
    print("Botón pulsado");
  });
}