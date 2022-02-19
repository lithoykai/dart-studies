import 'dart:io';

/* Projeto de um pequeno jogo de RPG.
1 - O player deve escolher uma das classes. Essa classe terá suas caracteristicas em listas (MAP). 
2 - Após o player escolher, ele poderá escolher um item de poder oculto. (Não revelar o valores do item)
3 - O player poderá comprar um item através de uma loja que funcionará por LISTA. 
4 - O player poderá verificar os itens da sua mochila. 
5 - O player irá rodar um item que lhe dará força randomica. Variando de 10 a 50. 
6 - Deverá haver um pequeno menu. 
*/

void main() {
  stdout.write('Bem vindo ao TaidaRPG! Diga-me, qual será seu nome? ');
  var playername = stdin.readLineSync();
  print(
      'Certo, $playername! Agora você precisa escolher uma das classes a seguir:');
  Map arqueiro = {
    'Força': 25,
    'Precisão': 50,
    'Agilidade': 45,
    'Inteligência': 55
  };
  Map guerreiro = {
    'Força': 80,
    'Precisão': 40,
    'Agilidade': 30,
    'Inteligência': 45
  };

  //Escolha de Classe.
  var guildname;

  var guild; //Variavel para classe, para guardar o valor da classe escolhida.
  print('1- Arqueiro:\n $arqueiro \n2- Guerreiro \n $guerreiro');
  stdout.write('Eu escolho a classe (1 ou 2): ');
  var playerclasse = stdin.readLineSync();
  if (playerclasse == '1') {
    print('Sua classe escolhida foi a Arqueiro');
    guild = arqueiro;
    guildname = 'Arqueiro';
  } else if (playerclasse == '2') {
    print('Sua classe escolhida foi Guerreiro');
    guild = guerreiro;
    guildname = 'Guerreiro';
  } else {
    print('Não foi possível compreender');
  }

  //Item sagrado para iniciar o RPG.
  stdout.write(
      'Certo! Agora está na hora de você escolher um item inicial\n Este item lhe dará um poder! Escolha com sabedoria.');
  stdout.write(
      'O itens são:\n 1- Anel de Hashion\n 2- Tornozeleira de Josin\n 3- Coroa da Justiça\n 4- Pedra do Juramento.\n Qual item você irá querer? ');
  var startitem = stdin.readLineSync();
  var valor = [95, 100, 120, 105];

  valor.shuffle();
  if (startitem == '1') {
    valor.shuffle();
    guerreiro['Força'] = valor.first.toInt();
    arqueiro['Força'] = valor.first.toInt();
  } else if (startitem == '2') {
    valor.shuffle();
    guerreiro['Agilidade'] = valor.first.toInt();
    arqueiro['Agilidade'] = valor.first.toInt();
  } else if (startitem == '3') {
    valor.shuffle();
    guerreiro['Inteligência'] = valor.first.toInt();
    arqueiro['Inteligência'] = valor.first.toInt();
  } else if (startitem == '4') {
    valor.shuffle();
    guerreiro['Precisão'] = valor.first.toInt();
    arqueiro['Precisão'] = valor.first.toInt();
  }
  print(' Seu status atuais são: $guild');
}
