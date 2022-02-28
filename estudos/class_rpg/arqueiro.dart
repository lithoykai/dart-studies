class Arqueiro {
  int forca;
  int agilidade;
  int inteligencia;
  String _nomeHeroi = 'Arqueiro';
  String nomeForca = 'Força';
  String nomeAgilidade = 'Agilidade';
  String nomeInteligencia = 'Inteligência';
  
  Arqueiro({this.forca = 30, this.agilidade = 50, this.inteligencia = 60});
 
 
  String get nomeHeroi {
    return this._nomeHeroi;
  }

}
