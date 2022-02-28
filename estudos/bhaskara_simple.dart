import 'dart:io';
import 'dart:math';

double? xneg;
double? xpos;

//Cálculo do Delta através de função:
var deltacalc = (double a, double b, double c) => (b * b) - 4 * a * c;

//Entrada de Valores A B e C via FOR;
List? adicao(List abc){
  for (var i = 65; i < 68; i++) {
          stdout.write('Adicione o valor de ${String.fromCharCode(i)}: ');
      do{
         double? adicionar = double.tryParse(stdin.readLineSync().toString());
      if(adicionar == null){ 
          stdout.write('O valor digitado não foi compreendido, tente novamente: ');
      } else {
            abc.add(adicionar);
            break;
        };
    }while(true);
};}

void main() {
  List abc = [];
  adicao(abc);
  print(abc);
  var delta = double.parse(deltacalc(abc.elementAt(0), abc.elementAt(1), abc.elementAt(2)).toString());
  print('O valor de Delta é: $delta');
  if (delta < 0) {
    print('Impossível continuar com calculos convencionais.');
  } else {
    equacao(abc.elementAt(0), abc.elementAt(1), abc.elementAt(2));
    print('O valor de X1 = $xneg e o valor de x2 = $xpos');
  };
}

//função com responsabilidade de fazer a equação de bhaskara.
void equacao(double a, double b, double c) {
  var deltacalca = sqrt(double.parse(deltacalc(a, b, c).toString()));

  double doublea = 2 * a;
  xneg = (-b - deltacalca) / doublea;
  xpos = (-b + deltacalca) / doublea;
}