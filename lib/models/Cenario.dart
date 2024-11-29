class Cenario {
  final String nome; 
  final String imgUrl; 
  final String Descricao;
  final List<String> ImagensCenarios;

  Cenario({
    required this.nome,
    required this.imgUrl,
    required this.Descricao,
    required this.ImagensCenarios,
  });
}

List<Cenario> getCenarios() {
  List<Cenario> cenarios = [];

  cenarios.add(Cenario(
    nome: 'Casarão Abandonado',
    imgUrl: 'assets/img/cenarios/casarao.jpeg',
    Descricao: 'Casa muito grande; mansão. Construção com um só pavimento sem divisões ou mal distribuída. Casa antiga conhecida por, supostamente, ser assombrada',
    ImagensCenarios: [
      'assets/img/cenarios/casarao.jpeg',
      'assets/img/cenarios/cassino.jpeg',
      'assets/img/cenarios/predio.jpeg'
    ]
  ));

  cenarios.add(Cenario(
    nome: 'Cassino Saltitante',
    imgUrl: 'assets/img/cenarios/cassino.jpeg',
    Descricao: 'Casa muito grande; mansão. Construção com um só pavimento sem divisões ou mal distribuída. Casa antiga conhecida por, supostamente, ser assombrada',
    ImagensCenarios: [
      'assets/img/cenarios/casarao.jpeg',
      'assets/img/cenarios/cassino.jpeg',
      'assets/img/cenarios/predio.jpeg'
    ]
  ));

  cenarios.add(Cenario(
    nome: 'Prédio em Construção',
    imgUrl: 'assets/img/cenarios/predio.jpeg',
    Descricao: 'Casa muito grande; mansão. Construção com um só pavimento sem divisões ou mal distribuída. Casa antiga conhecida por, supostamente, ser assombrada',
    ImagensCenarios: [
      'assets/img/cenarios/casarao.jpeg',
      'assets/img/cenarios/cassino.jpeg',
      'assets/img/cenarios/predio.jpeg'
    ]
  ));

  cenarios.add(Cenario(
    nome: 'Taverna da Madeira',
    imgUrl: 'assets/img/cenarios/taverna.jpeg',
    Descricao: 'Casa muito grande; mansão. Construção com um só pavimento sem divisões ou mal distribuída. Casa antiga conhecida por, supostamente, ser assombrada',
    ImagensCenarios: [
      'assets/img/cenarios/casarao.jpeg',
      'assets/img/cenarios/cassino.jpeg',
      'assets/img/cenarios/predio.jpeg'
    ]
  ));

  return cenarios;
}