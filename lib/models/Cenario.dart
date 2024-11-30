class Cenario {
  final String nome; 
  final String imgUrl; 
  final String Descricao;
  final String objetivo;
  final List<String> ImagensCenarios;

  Cenario({
    required this.nome,
    required this.imgUrl,
    required this.Descricao,
    required this.ImagensCenarios,
    required this.objetivo,
  });
}

List<Cenario> getCenarios() {
  List<Cenario> cenarios = [];

  cenarios.add(Cenario(
    nome: 'Casarão Abandonado',
    imgUrl: 'assets/img/cenarios/casarao.jpeg',
    Descricao: 'Fase 4: Uma grande casa com vários desafios. Os três personagens principais terão que usar suas habilidades para passar por obstáculos e capangas até derrotar o vilão final.',
    ImagensCenarios: [
      'assets/img/cenarios/CASARAO/PORAO.jpg',
      'assets/img/cenarios/CASARAO/PRIMEIRO ANDAR BANHEIRO.jpg',
      'assets/img/cenarios/CASARAO/PRIMEIRO ANDAR COZINHA.jpg',
      'assets/img/cenarios/CASARAO/PRIMEIRO ANDAR SALA.jpg',
      'assets/img/cenarios/CASARAO/SOTAO.jpg'
    ],
    objetivo: 'Usar todas as habilidades dos três personagens principais para passar por puzzles, obstáculos e capangas até chegar à vilã final. Objetivo: Encontrar o tio raptado. Recompensa: Final do jogo com uma cutscene e presentes recebidos.'
  ));

  cenarios.add(Cenario(
    nome: 'Cassino Saltitante',
    imgUrl: 'assets/img/cenarios/cassino.jpeg',
    Descricao: 'Fase 3: Um cassino com entrada calma, mas que se transforma em um labirinto confuso. O jogador precisa encontrar a sala secreta do vilão final.',
    ImagensCenarios: [
      'assets/img/cenarios/CASSINO/LABIRINTO.jpg',
      'assets/img/cenarios/CASSINO/SALA EDMUNDO.jpg'
    ],
    objetivo: 'Resolver o labirinto do cassino e encontrar o vilão final escondido na sala secreta. Objetivo: Derrotar o chefão final. Recompensa: Desbloqueia a fase final, onde os três personagens principais se juntam, e progresso na história.'
  ));

  cenarios.add(Cenario(
    nome: 'Prédio em Construção',
    imgUrl: 'assets/img/cenarios/predio.jpeg',
    Descricao: 'Fase 1: Prédio em construção, com diversos andares e obstáculos, além de espaços para parkour. O jogador enfrentará desafios diferentes em cada andar, como combate e parkour, até chegar ao topo para enfrentar o vilão final.',
    ImagensCenarios: [
      'assets/img/cenarios/Prédio/1 ANDAR.jpg',
      'assets/img/cenarios/Prédio/2 ANDAR.jpg',
      'assets/img/cenarios/Prédio/3 ANDAR.jpg',
      'assets/img/cenarios/Prédio/4 ANDAR.jpg'
    ],
    objetivo: 'Derrotar todos os capangas de cada andar do prédio e passar por obstáculos até chegar no vilão final. Objetivo: Derrotar o chefão final. Recompensa: Desbloqueia a próxima fase e progresso na história.'
  ));

  cenarios.add(Cenario(
    nome: 'Taverna da Madeira',
    imgUrl: 'assets/img/cenarios/taverna.jpeg',
    Descricao: 'Fase 2: Taverna com um local bagunçado e uma porta trancada. O jogador precisará resolver o puzzle e passar despercebido pelos capangas até chegar ao vilão final.',
    ImagensCenarios: [
      'assets/img/cenarios/TAVERNA/BAR.jpg',
      'assets/img/cenarios/TAVERNA/PORAO.jpg',
      'assets/img/cenarios/TAVERNA/SALA ZIDA.jpg'
    ],
    objetivo: 'Descobrir a senha da porta interna da taverna e passar despercebido pelos capangas, encontrando escudos escondidos até chegar no vilão final. Objetivo: Derrotar o chefão final. Recompensa: Desbloqueia a próxima fase e progresso na história.'
  ));

  return cenarios;
}