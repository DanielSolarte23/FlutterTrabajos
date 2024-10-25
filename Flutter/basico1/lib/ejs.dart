import 'dart:math';

void main() {

  Random random = Random();


  int randomNumber = random.nextInt(100); // El número será entre 0 y 99
  

  print("Número aleatorio generado: $randomNumber");
  

  double randomDouble = random.nextDouble();
  print("Número decimal aleatorio: $randomDouble");
}
