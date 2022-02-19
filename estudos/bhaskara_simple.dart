import 'dart:io';
import 'dart:math';

double? delta;
double? xneg;
double? xpos;

void main() {
  equacao();
  print('O valor de Delta é: $delta');
  if (delta! < 0) {
    print('Impossível continuar com calculos convencionais.');
  } else {
    print('O valor de X1 = $xneg e o valor de x2 = $xpos');
  }
}

void equacao() {
  stdout.write('Informe o valor de A: ');
  var entradaDeA = stdin.readLineSync();
  double a = double.parse(entradaDeA!);
  stdout.write('Informe o valor de B: ');
  var entradaDeB = stdin.readLineSync();
  double b = double.parse(entradaDeB!);
  stdout.write('Informe o valor de C: ');
  var entradaDeC = stdin.readLineSync();
  double c = double.parse(entradaDeC!);
  delta = (b * b) - 4 * a * c;
  double deltacalc = sqrt(delta!);
  double doublea = 2 * a;
  xneg = (-b - deltacalc) / doublea;
  xpos = (-b + deltacalc) / doublea;
}
