import 'dart:io';
import 'dart:math';

/* Projeto de um pequeno jogo de RPG.
1 - O player deve escolher uma das classes. Essa classe terá suas caracteristicas em listas (MAP). 
2 - Após o player escolher, ele poderá escolher um item de poder oculto. (Não revelar o valores do item)
3 - O player irá rodar um item que lhe dará força randomica. Variando de 10 a 50. 
*/

void main() {
  stdout.write('Bem vindo ao TaidaRPG! Diga-me, qual é o seu nome? ');
  var playername = stdin.readLineSync();
  print(
      'Certo, $playername! Agora você precisa escolher uma das classes a seguir: ');
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

  Map habilidades = {
    '1': 'Força',
    '2': 'Precisão',
    '3': 'Agilidade',
    '4': 'Inteligência'
  };

  //Escolha de Classe.
  //Trocarei o nome de classe por GUILD nas váriaveis.
  var guildname; // Variavel para guardar o nome da classe.
  var guild; //Variavel para classe, para guardar o valor da classe escolhida.
  Map namesg = {
    '1': 'Arqueiro',
    '2': 'Guerreiro'
  }; //Map feito para armazenar o nomes das classe.
  Map mapsguild = {
    '1': arqueiro,
    '2': guerreiro
  }; //Map feito para armazenar o valor de cada classe.
  print('1- Arqueiro:\n $arqueiro \n2- Guerreiro \n $guerreiro');
  stdout.write('Eu escolho a classe (1 ou 2): ');
  do {
    var playerclasse = stdin.readLineSync();
    if (namesg.containsKey(playerclasse)) {
      guildname = namesg[playerclasse];
      guild = mapsguild[playerclasse];
      break;
    }
    print('Não foi possível compreender, tente novamente:');
  } while (true);

  //Item sagrado para iniciar o RPG.
  stdout.write(
      'Certo! Você escolheu a classe $guildname, agora está na hora de você escolher um item inicial\n Este item lhe dará um poder! Escolha com sabedoria. ');
  stdout.write(
      'O itens são:\n 1- Anel de Hashion\n 2- Tornozeleira de Josin\n 3- Coroa da Justiça\n 4- Pedra do Juramento.\n Qual item você irá querer? ');
  var random = new Random();
  var valor = random.nextInt(25) + 95;
  var startitem = stdin.readLineSync();
  do {
    if (habilidades.containsKey(startitem)) {
      guerreiro[habilidades[startitem]] = valor;
      arqueiro[habilidades[startitem]] = valor;
      break;
    }
    stdout.write('Não foi possível compreender. Por favor escolha novamente: ');
  } while (true);
  print(
      ' Esse item lhe deu ${habilidades[startitem]}, status atuais são: $guild');
}
