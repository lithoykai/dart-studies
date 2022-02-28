import 'carro.dart';

void main(){
 var c1 = new Carro(300);

while(!c1.estaNoLimite()){
print('A velocidade atual é: ${c1.acelerar()} km/h');
}
print('O carro chegou ao limite de velocidade!'); 
while(c1.velocidadeAtual > 0){
  print('A velocidade atual é: ${c1.freiar()} km/h');
}


}