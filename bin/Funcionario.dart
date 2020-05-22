//Getters y setters
class Funcionario{
  String nombre;
  //Encapsulamiento, var privada:
  double _horas;

//  void set horasLaboradas(double horas){
//    _horas = horas / 8;
//  }
//
//  //no usa paréntesis:
//  double get horasLaboradas{
//    return _horas;
//  }

  //Lo mismo de arriba pero reducido:
void set horasLaboradas (double horas) => _horas = horas / 8;

double get horasLaboradas => _horas;

}