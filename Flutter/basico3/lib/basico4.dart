void main(){
  //MAP
  Map<int, String> datos2 = {
    21: 'German', //no necesariamente tiene que estar la clave en ordern
    10: 'Octubre',
    80: 'America',

  };
  print(datos2);
  print(datos2[80]);//para imprimir un dato hago referencia a su clave

  Map<String, dynamic> persona = {
    "nombre": "Carlos",
    "Apellido": "Perez",
    "Edad": 21,
    "correo": "carlosperez@gmail.com"
  };
  print(persona);
  print(persona["nombre"]);

  List persona2 = [{
    "nombre": "Carlos",
    "Apellido": "Perez",
    "Edad": 21,
    "correo": "carlosperez@gmail.com"
  },{
    "nombre": "Daniel",
    "Apellido": "Sanchez",
    "Edad": 21,
    "correo": "carlosperez@gmail.com"
  },{
    "nombre": "Cata",
    "Apellido": "Anaya",
    "Edad": 21,
    "correo": "carlosperez@gmail.com"
  }
  ];

 //para imprimir toda la lista 

 for (var per in persona2) {
  print(persona2);
 };
}