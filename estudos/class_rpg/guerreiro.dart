class Guerreiro{
  int forca;
  int agilidade;
  int inteligencia;
  String _nomeHeroi = 'Guerreiro';
  String nomeForca = 'Força';
  String nomeAgilidade = 'Agilidade';
  String nomeInteligencia = 'Inteligência';

  Guerreiro({this.forca = 80, this.agilidade = 30, this.inteligencia = 50});

  String get nomeHeroi{
  return this._nomeHeroi;
  }
}