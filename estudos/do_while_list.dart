import 'dart:io';

main() {
  List idades = [10, 5, 80];
  print(idades);
  stdout.write('Qual é a sua idade? ');
  var adicionar = stdin.readLineSync();
  int a = int.parse(adicionar!);
  idades.add(a);
  print(idades);

  bool continuar = true;
  do {
    stdout.write('Gostaria de adicionar mais alguma idade? S/N ');
    var resposta = stdin.readLineSync();
    if (resposta == 'N' || resposta == 'n') {
      continuar == false;
      break;
    } else if (resposta == 'S' || resposta == 's') {
      stdout.write('Que idade você quer adicionar? ');
      var adicionar = stdin.readLineSync();
      int a = int.parse(adicionar!);
      idades.add(a);
    } else {
      print(
          'Não foi possível identificar o que você escreveu, tente novamente');
    }
  } while (continuar);
  print(idades);
}
