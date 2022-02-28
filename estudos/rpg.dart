import 'class_rpg/arqueiro.dart';
import 'class_rpg/guerreiro.dart';
import 'dart:io';
import 'dart:math';

// Um pequeno código simples para treinar a utilização de classes, maps, objetos.
// O usuario poderá declarar seu nickname e escolher sua classe (Guerreiro ou Arqueiro);
// Deverá aparecer os atributos de cada classe (chamar as classes de herois nas váriaveis para não confundir);
// Terá um "item" que alterá o valor de um item das classes. 

main() {

  var objHeroi;
  stdout.write('Seja bem vindo ao nosso pequeno RPG! Qual será seu nick? ');
  final playername = stdin.readLineSync().toString();  // Escolha do nickname que será utilizado
  stdout.write(
      'Muito bem, $playername, agora escolha a sua classe:\n1- Arqueiro.\n2- Guerreiro.\nSelecione 1 ou 2: ');
  Map nomesDosHerois = {'1': new Arqueiro(), '2': new Guerreiro()}; //Map para setar as classes que o usuário usará
  do{ 
    var heroi = stdin.readLineSync();
    if (nomesDosHerois.containsKey(heroi)){
      objHeroi = nomesDosHerois[heroi];
      break;
    };
    print('Não foi possível compreender, tente novamente: ');
  }while(true);
  Map atributos ={ 
    objHeroi.nomeForca: objHeroi.forca,
    objHeroi.nomeAgilidade: objHeroi.agilidade,
    objHeroi.nomeInteligencia: objHeroi.inteligencia,
  };

  print('Você escolheu a classe: ${objHeroi.nomeHeroi}, uma ótima escolha! Seus atributos são: $atributos');
  stdout.write('Você poderá ganhar um item que aumentará um dos seus atributos com um valor aleatório, escolha com sabedoria:\n1- Anel da Paz\n2- Luvas da Justiça\n3- Olho da Razão.\nEscolha entre 1, 2 e 3:\n');
  Map escolhasDosAtributos ={'1': objHeroi.nomeAgilidade, '2': objHeroi.nomeForca, '3': objHeroi.nomeInteligencia,};
  var random = new Random();
  var valor = random.nextInt(25) + 40;
  do{
    var itemAdicional = stdin.readLineSync().toString();
    if(escolhasDosAtributos.containsKey(itemAdicional)){
      atributos[escolhasDosAtributos[itemAdicional]] = atributos[escolhasDosAtributos[itemAdicional]] + valor; 
      print('O atributo alterado foi ${escolhasDosAtributos[itemAdicional]} no valor de + $valor');
      print(atributos);
      break;
    };
    print('Não foi possível compreender, tente novamente: ');
  }while(true);

}