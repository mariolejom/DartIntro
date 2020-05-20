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
