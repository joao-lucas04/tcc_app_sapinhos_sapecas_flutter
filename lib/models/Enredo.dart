class Enredo {
  final String historia;
  final String imageUrl;  

  Enredo({
    required this.historia,
    required this.imageUrl,
  });
}

List<Enredo> getEnredos() {
  List<Enredo> enredos = [];

  enredos.add(Enredo(
    historia: '',
    imageUrl: 'assets/img/personagens/ronaldinho.jpeg',
  ));

  enredos.add(Enredo(
    historia: '',
    imageUrl: 'assets/img/personagens/romarinho.jpeg',
  ));

  enredos.add(Enredo(
    historia: '',
    imageUrl: 'assets/img/personagens/rivaldinho.jpeg',
  ));

  enredos.add(Enredo(
    historia: '',
    imageUrl: 'assets/img/personagens/rivaldinho.jpeg',
  ));

  return enredos;
}
