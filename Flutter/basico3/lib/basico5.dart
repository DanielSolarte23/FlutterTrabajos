void main(){
  //Estructuras de datos en DART

  /* >mayor que */


  int edad = 15;

  if (edad >= 18) {
    print("Es mayor de edad");
  }else{
    print("Es menor de edad");
  }

  edad >=18?print("Si puede votar") : print("no puede votar");


  String pais = "Salvador";

  pais.length >= 5?print(pais.toUpperCase()):print("No tiene");
}