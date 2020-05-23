import 'dart:ffi';

import 'Funcionario.dart';

void main(List<String> arguments) {
  //Declarando variables
  print("""--------------------
Declarando variables
--------------------""");
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
  print("""--------------------
Colecciones
--------------------""");
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
  print("""--------------------
Diccionarios
--------------------""");
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
  print("""--------------------
Final y Cons
--------------------""");
  final String nombre = "Mario";
  const edad = 12;
  print(nombre);
  print(edad);

  //Llamando a funciones
  print("""--------------------
Llamando a funciones
--------------------""");
  add();
  addConParam(3, 5);
  int regreso = addConRegreso(2, 2);
  print(regreso);

  //Función arrow y anónimas
  print("""--------------------
Funciones arrow y anónimas
--------------------""");
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
  print("""--------------------
Probando parámetros de funciones
--------------------""");
  paramRequeridos(2, 2);
  paramOpcionalesPosicionados(1);
  paramOpcionalesNombrados(3, b: 2);
  paramOpcionalesNombrados2(b: 2, a: 2);
  paramOpcionalesDefecto(44);

  //IF-Else
  print("""--------------------
If-Else
--------------------""");
  var acceso = edad >= 18 ? "Correcto" : "Niño";
  print(acceso);

  //Si es nulo asigna como invitado:
  var nombreInvitado;
  print(nombreInvitado ?? "Invitado");

  //Switch case
  print("""--------------------
Switch
--------------------""");
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
  print("""--------------------
For
--------------------""");
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
  print("""--------------------
While y do while
--------------------""");
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
  print("""--------------------
Break y continue
--------------------""");
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
  print("""--------------------
Clases 1
--------------------""");
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
  print("""--------------------
Método constructor
--------------------""");
  //Trabajador tra = Trabajador();
  Trabajador tra = Trabajador(1, "MarioA");
  tra.trabajar();

  Trabajador tra2 = Trabajador.trabajo(3, "Fernando", false);

  tra2.cumpleHorario() ? print("Cumple horario") : print("No cumple horario");
  
  //Getters y setters
  print("""--------------------
Getters y setters
--------------------""");
  Funcionario func = Funcionario();
  func.horasLaboradas = 35;
  
  print("El trabajador laburó ${func.horasLaboradas} días esta semana.");

  //Herencia
  print("""--------------------
Herencia
--------------------""");
  Cliente cliente = Cliente();
  cliente.id = 1;
  cliente.nombre ="Mario";
  cliente.salario = 100.0;
  cliente.vehiculoAsignado = "UberBlack";

  cliente.calcularSalario();

  Vendedor vendedor = Vendedor();
  vendedor.id = 2;
  vendedor.nombre = "Juan";
  vendedor.salario = 100;
  vendedor.venderACliente();

  vendedor.calcularSalario();

  //Clases Abstractas
  print("""--------------------
Clases abstractas
--------------------""");
  Chofer chofer = Chofer();
  chofer.id = 1;
  chofer.nombre = "Pepito";
  chofer.salario = 400;
  chofer.calcularSalario();
  chofer.actividad();

  Cajero cajero = Cajero();
  cajero.id = 2;
  cajero.nombre = "Pedro";
  cajero.salario = 420;
  cajero.calcularSalario();
  cajero.actividad();

  //Clases Implícitas
  print("""--------------------
Clases implícitas
--------------------""");
  Chofer2 chofchof = Chofer2();
  chofchof.id = 1;
  chofchof.nombre = "Carlos";
  chofchof.salario = 100;
  chofchof.calcularSalario();
  chofchof.buenaConducta();

  Cajero2 cajcaj = Cajero2();
  cajcaj.id = 2;
  cajcaj.nombre = "Juan";
  cajcaj.salario = 200;
  cajcaj.calcularSalario();
  cajcaj.buenaConducta();

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

//Herencia
class Usuario{
  var id;
  var nombre;
  double salario;

  void calcularSalario(){
    print("El trabajador tiemne un salario de ${salario * 5.5}");
  }
}

class Cliente extends Usuario{
  String vehiculoAsignado;

  void manejarVehiculo(){
    print("Manejando...");
  }
}

class Vendedor extends Usuario{
  String idCliente;
  
  void venderACliente(){
    print("Vender...");
  }
}

//Clases Abstractas
abstract class Empleado2 {
  var id;
  var nombre;
  var salario;

  void calcularSalario(){
    print("El salario del empleado es ${salario * 5.5}");
  }

  void actividad();
}

class Chofer extends Empleado2{
  var vehiculo;

  void manejar(){
    print("manejando...");
  }

  //Llamando al método, implementando el método de la clase abstracta
  @override
  void actividad() {
    print("Pasear por la ciudad");
  }
}

class Cajero extends Empleado2{
  var cajaAsignada;

  void cobra(){

  }

  @override
  void actividad() {
    print("Cobrar a las personas");
  }

  @override
  void calcularSalario() {
    print("El salario del empleado es ${salario * 5.5 + 100}");
    //super.calcularSalario();
  }
}

//Clases Implícitas
class Empleado3{
  var id;
  var nombre;
  var salario;

  void calcularSalario(){
    print("El salario del empleado es ${salario * 5.5}");
  }

}

class Conducta{
  void buenaConducta(){
    print("El empleado se comportó correctamente");
  }
}

class Chofer2 implements Empleado3, Conducta{
  var id = 1;
  var nombre = "Roberto";
  var salario = 100;

  @override
  void calcularSalario() {
    print("El salario del empleado es ${salario * 5.5}");
  }

  @override
  void buenaConducta() {
    print("Se comportó mal");
  }
}

class Cajero2 implements Empleado3, Conducta{
  var id = 1;
  var nombre = "Roberto";
  var salario = 100;

  @override
  void calcularSalario() {
    print("El salario del empleado es ${salario * 5.5}");
  }

  @override
  void buenaConducta() {
    print("Se comportó adecuadamente");
  }
}