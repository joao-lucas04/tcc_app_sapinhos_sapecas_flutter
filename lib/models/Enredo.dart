class Enredo {
  final String historia;
  final String imageUrl;
  final String titulo;  
 

  Enredo({
    required this.historia,
    required this.imageUrl,
    required this.titulo,
  });
}

List<Enredo> getEnredos() {
  List<Enredo> enredos = [];

  enredos.add(Enredo(
    historia: 'Era uma vez os 3 sapinhos sapecas, Ronaldinho, Romarinho e Rivaldinho. Eles passavam todos os finais de semana na casa do seu tio, Tio Luxo. Era pura diversão e alegria.',
    titulo: '1° Quadrinho',
    imageUrl: 'assets/img/enredo/PrimeiraCena.png',
  ));

  enredos.add(Enredo(
    historia: 'Porém, em um desses finais de semana, algo inesperado aconteceu: a casa do tio estava toda bagunçada e virada do avesso. Parecia que tinha passado um furacão por ali. Então, o Ronaldinho resolveu averiguar.',
    titulo: '2° Quadrinho',
    imageUrl: 'assets/img/enredo/SegundaCena.png',
  ));

  enredos.add(Enredo(
    historia: 'Ao vasculhar, Ronaldinho encontrou uma carta. Parecia que seu tio havia sido capturado. Logo, os outros irmãos encontraram uma pista cada um e deduziram o local onde poderiam encontrar mais pistas.',
    titulo: '3° Quadrinho',
    imageUrl: 'assets/img/enredo/TerceiraCena.png',
  ));

  enredos.add(Enredo(
    historia: 'Apos uma longa conversa, decidiram se separar e, com determinação e coragem, vão encontrar seu tio perdido em cada canto da vila do Brejo.',
    titulo: '4° Quadrinho',
    imageUrl: 'assets/img/enredo/QuartaCena.png',
  ));

  enredos.add(Enredo(
    historia: 'Depois de decidirem, eles olham o horizonte da Vila do Brejo e veem o próximo desafio diante de seus olhos. Essa será uma longa jornada, mas não faltará determinação aos irmãos. Qual será o final dessa incrível história?',
    titulo: '5° Quadrinho',
    imageUrl: 'assets/img/enredo/QuintaCena.png',
  ));

  enredos.add(Enredo(
    historia: 'Após uma longa jornada repleta de desafios e dificuldades, eles finalmente encontraram seu amado tio. Em sinal de gratidão, ele presenteou cada um com algo especial: um Playstation, um cinturão do Cururu do Bronxs e uma camisa do PSG (Paris Sapos Grande).',
    titulo: '6° Quadrinho',
    imageUrl: 'assets/img/enredo/CenaFinal1.png',
  ));

  enredos.add(Enredo(
    historia: 'Parece que finalmente descobrimos o final da história! Após uma longa jornada de desafios e batalhas, nossos protagonistas alcançaram o objetivo final e trouxeram paz à Vila do Brejo, que nunca mais será atormentada por essa gangue de insetos!',
    titulo: '7° Quadrinho',
    imageUrl: 'assets/img/enredo/CenaFinal2.png',
  ));

  return enredos;
}
