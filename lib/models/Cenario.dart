class Cenario {
  final String nome; 
  final String imgUrl; 

  Cenario({
    required this.nome,
    required this.imgUrl,
  });
}

List<Cenario> getCenarios() {
  List<Cenario> cenarios = [];

  cenarios.add(Cenario(
    nome: 'Casarão Abandonado',
    imgUrl: 'assets/img/cenarios/casarao.jpeg',
  ));

  cenarios.add(Cenario(
    nome: 'Cassino Saltitante',
    imgUrl: 'assets/img/cenarios/cassino.jpeg',
  ));

  cenarios.add(Cenario(
    nome: 'Prédio em Construção',
    imgUrl: 'assets/img/cenarios/predio.jpeg',
  ));

  cenarios.add(Cenario(
    nome: 'Taverna da Madeira',
    imgUrl: 'assets/img/cenarios/taverna.jpeg',
  ));

  return cenarios;
}