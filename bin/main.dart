import 'dart:ffi';

import 'Funcionario.dart';

void main(List<String> arguments) {
  //Declarando variables
  int valInt = 1;
  String varNombre = "Mario";
  dynamic valBool = true;
  print("Variables: " + "$valInt $valBool");
  print('''
        Lorem lorem lorem
        lorem lorem lorem ''');

  //interpolación de cadenas con r (RAW), ver sñimbolos en pantalla
  print(r"65%$···");
  print("Prueba y otra línea\n");
  print("Línea 2");

  print(varNombre.isEmpty);

  //Colecciones
  //List
  List<String> list;
  list = ["Negro", "Rojo"];
  print(list);
  list.add("Rosa");
  print(list);

  List<String> listAux = ["Azul", "Verde"];
  list.addAll(listAux);
  print(list);

  list.removeAt(2);
  print(list);
  //Set
  Set set;
  set = Set.from(["Argel", "Juan", "Pedro"]);
  print(set);

  set.add("Erika");
  print(set);

  set.remove("Argel");
  print(set);

  //Maps
  Map<int, dynamic> map;
  map = {1: "Rojo", 2: "Verde"};
  print(map);
  
  map[3]="Azul";
  print(map);
  map[4]=100;
  print(map);
  
  map.remove(2);
  print(map);

  print(map.isEmpty);
  print(map.length);

  //final y cons
  final String nombre = "Mario";
  const edad = 12;
  print(nombre);
  print(edad);

  //Llamando a funciones
  add();
  addConParam(3, 5);
  int regreso = addConRegreso(2, 2);
  print(regreso);

  //Función arrow y anónimas
  funcionArrow(2, 3);
  var resultado = funcionArrowRegreso(2, 6);
  print(resultado);

  List listaColores = ["Rojo", "Azul", "Rosa"];
  listaColores.forEach((element) {
    print(element);
  });

  listaColores.forEach((element) {
    if(element == "Rojo"){
      print(element);
    }
  });

  //Parámentros
  paramRequeridos(2, 2);
  paramOpcionalesPosicionados(1);
  paramOpcionalesNombrados(3, b: 2);
  paramOpcionalesNombrados2(b: 2, a: 2);
  paramOpcionalesDefecto(44);

  //IF-Else
  var acceso = edad >= 18 ? "Correcto" : "Niño";
  print(acceso);

      //Si es nulo asigna como invitado:
  var nombreInvitado;
  print(nombreInvitado ?? "Invitado");

  //Switch case
  var opcion = 2;
  switch(opcion){
    case 1:
      print("Retorno opción $opcion");
      break;
    case 2:
      print("Retorno opción $opcion");
      continue continuaAqui;
      break;
    continuaAqui:
    case 3:
      print("Retorno opción desde continue $opcion");
      break;
    default:
      print("Retorno opción $opcion");
  }

  //For
  for(int i = 0; i <= 10; i++){
    print("For normal $i");
    if (i.isEven){
      print("Condicional $i");
    }
  }

  List <String> listaColores2 = ["Rojo", "Verde", "Amarillo"];
  for(String color in listaColores2){
    print(color);
  }
  
  listaColores2.forEach((element) => print(element));

  listaColores2.forEach((element) {
    print(element);
  });

  //While y do while
  int condicion = 0;
  while(condicion <= 10){
    print("While tiene el valor: $condicion");
    condicion ++;
  }

  condicion = 1;
  do{
    print("Do while tiene el valor: $condicion");
    condicion ++;
  }while(condicion <= 10);

  //Break y continue
  for(int i = 1; i <= 3; i++){
    for(int j = 1; j <= 3; j++){
      print("$i $j");
      if(i == 2 && j == 1) break;
    }
  }

  forExterno: for(int i = 1; i <= 3; i++){
    for(int j = 1; j <= 3; j++){
      if(i == 2 && j == 1) continue forExterno;
      print("$i $j");
    }
  }

  //Usando clases
  Empleado emp = new Empleado();
  emp.id = 1;
  emp.nombre = "Mario Alejandro";

//  if(emp.cumpleHorario()){
//    emp.trabajar();
//  }
  !emp.cumpleHorario() ? emp.trabajar() : print("No se presentó a trabajar hoy");

  Empleado emp2 = Empleado()
  ..id = 2
  ..nombre = "Pedro Navaja";

  if(emp2.cumpleHorario()){
    emp2.trabajar();
  }

  //Constructores
  //Trabajador tra = Trabajador();
  Trabajador tra = Trabajador(1, "MarioA");
  tra.trabajar();

  Trabajador tra2 = Trabajador.trabajo(3, "Fernando", false);

  tra2.cumpleHorario() ? print("Cumple horario") : print("No cumple horario");
  
  //Getters y setters
  Funcionario func = Funcionario();
  func.horasLaboradas = 35;
  
  print("El trabajador laburó ${func.horasLaboradas} días esta semana.");

}

//Funciones
void add() {
  print(3+5);
}

void addConParam(int a, int b){
  print(a + b);
}

int addConRegreso(int a, int b){
  return a + b;
}

//Funciones de sintaxis corta Arrow y anónimas
void funcionArrow(int a, int b) => print("El resultado es ${a + b}");
int funcionArrowRegreso(int a, int b) => a + b;

//Parámetros
void paramRequeridos(int a, int b){
  print(a);
  print(b);
}

void paramOpcionalesPosicionados(int a, [int b]){
  print(a);
  print(b);
}

void paramOpcionalesNombrados(int a, {int b}){
  print(a);
  print(b);
}

//Al llamarlo se puede hacer con el nombre de la variable sin importar el orden
void paramOpcionalesNombrados2({int a, int b}){
  print(a);
  print(b);
}

void paramOpcionalesDefecto(int a, {int b = 5}){
  print(a);
  print(b);
}

//Clases
class Empleado{
  var id;
  var nombre;

  bool cumpleHorario(){
    return true;
  }

  void trabajar(){
    print("El empleado $id trabajó");
  }
}

//Tipos de constructores: por defecto, por parámetro y nombrado
class Trabajador{
  var id;
  var nombre;
  var trabajo;

//  Constructor por defecto:
//  Trabajador(){
//    print("Me ejecuté al iniciar");
//  }

//  Constructor por parámetro
//  Trabajador(int id, String nombre){
//    this.id = id;
//    this.nombre = nombre;
//  }

  Trabajador(this.id, this.nombre);

  //Contructor por nombre
  Trabajador.trabajo(this.id, this.nombre, this.trabajo);

  bool cumpleHorario(){
//    return true;
  //return de constructor por nombre:
    return trabajo;
  }

  void trabajar(){
    print("El empleado $nombre trabajó");
  }
}