void main(){
  String nombre = "Daniel";
  String apellido = "Solarte";
  String NombreCompletos = nombre + " " + apellido;
  String NombreCompletos2 = "Nombres completos: $nombre Apellidos: $apellido";
  double peso = 72.5;
  int edad = 25;
  bool funcionario = true;

  print(NombreCompletos);
  print(NombreCompletos2);
  print("su peso es: $peso");
  print('su peso es: '+peso.toString());//conversion a String
  print('Edad: ${(edad +5).toString()}');//interpolcacion con una operacion
  print('Funcionario: $funcionario');
  print('Funcionario: ${!funcionario}');//interpolacion negacion variable
  
}

