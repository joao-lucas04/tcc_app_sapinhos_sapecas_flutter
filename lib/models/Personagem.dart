import 'package:flutter/material.dart';

class Personagem {
  final String nome;
  final String idade;
  final String altura;
  final String peso;
  final String naturalidade;
  final String ocupacao;
  final String apelido;
  final String imageUrl;
  final String imageUrlPerfil;
  final Color CorPrincipal;
  String gifUrl;  

  Personagem({
    required this.nome,
    required this.idade,
    required this.altura,
    required this.peso,
    required this.naturalidade,
    required this.ocupacao,
    required this.apelido,
    required this.imageUrl,
    required this.gifUrl,
    required this.imageUrlPerfil,
    required this.CorPrincipal,
  });
}

List<Personagem> getPersonagens() {
  List<Personagem> personagens = [];

  //ronaldinho
  personagens.add(Personagem(
    nome: 'Ronaldo Nazário Sapo',
    idade: '4 anos',
    altura: '23.0',
    peso: '8.0',
    naturalidade: 'Vila do Brejo',
    ocupacao: 'Nenhuma',
    apelido: 'Ronaldinho / Fenômeno / Sapinho',
    imageUrl: 'assets/img/personagens/ronaldinho.jpeg',
    gifUrl: "assets/gif/RonaldinhoDanca.gif",
    imageUrlPerfil: 'assets/img/perfil/ronaldinho.jpeg',
    CorPrincipal: Color.fromARGB(255, 42, 124, 81)
  ));

  //romarinho
  personagens.add(Personagem(
    nome: 'Romário Vasco Sapo',
    idade: '5 anos',
    altura: '23.0',
    peso: '8.5',
    naturalidade: 'Vila do Brejo',
    ocupacao: 'Nenhuma',
    apelido: 'Romarinho / Esquentadinho / Sapinho',
    imageUrl: 'assets/img/personagens/romarinho.jpeg',
    gifUrl: "assets/gif/RomarioDanca.gif",
    imageUrlPerfil: 'assets/img/perfil/romarinho.jpeg',
    CorPrincipal: Color.fromARGB(255, 166,36,22)
  ));

  //rivaldinho
  personagens.add(Personagem(
    nome: 'Rivaldo Barça Sapo',
    idade: '3 anos',
    altura: '23.0',
    peso: '7.5',
    naturalidade: 'Vila do Brejo',
    ocupacao: 'Nenhuma',
    apelido: 'Ronaldinho / Fujão / Sapinho',
    imageUrl: 'assets/img/personagens/rivaldinho.jpeg',
    gifUrl: "assets/gif/RivaldoDanca.gif",
    imageUrlPerfil: 'assets/img/perfil/rivaldinho.jpeg',
    CorPrincipal: Color.fromARGB(255, 61,141,168)
  ));

  //Aqui será da martinha
  personagens.add(Personagem(
    nome: 'Felipe Melo Mosca',
    idade: '17 dias',
    altura: '20.0',
    peso: '0.10',
    naturalidade: 'Vale do Pantanal',
    ocupacao: 'Engenheiro',
    apelido: 'Melo / Moscardo / Mosca',
    imageUrl: 'assets/img/personagens/melo.jpg',
    gifUrl: "assets/img/personagens/melo.jpg",
    imageUrlPerfil: 'assets/img/perfil/melo.jpg',
    CorPrincipal: Color.fromARGB(255,114,117,108)
  ));

  //Melo
  personagens.add(Personagem(
    nome: 'Felipe Melo Mosca',
    idade: '17 dias',
    altura: '20.0',
    peso: '0.10',
    naturalidade: 'Vale do Pantanal',
    ocupacao: 'Engenheiro',
    apelido: 'Melo / Moscardo / Mosca',
    imageUrl: 'assets/img/personagens/melo.jpg',
    gifUrl: "assets/img/personagens/melo.jpg",
    imageUrlPerfil: 'assets/img/perfil/melo.jpg',
    CorPrincipal: Color.fromARGB(255,114,117,108)
  ));

  //Melo Capanga
  personagens.add(Personagem(
    nome: 'Capangas Moscas',
    idade: '10 dias',
    altura: '15.0',
    peso: '0.8',
    naturalidade: 'Vale do Pantanal',
    ocupacao: 'Construtoras',
    apelido: 'Mosquinhas / Nojentas / Olhudas',
    imageUrl: 'assets/img/personagens/capangaMelo.jpg',
    gifUrl: "assets/img/personagens/capangaMelo.jpg",
    imageUrlPerfil: 'assets/img/perfil/capangaMelo.jpg',
    CorPrincipal: Color.fromARGB(255,228,185,134)
  ));

  //Edmundo
  personagens.add(Personagem(
    nome: 'Edmundo da Gama Grilo',
    idade: '3 meses',
    altura: '30.0',
    peso: '15',
    naturalidade: 'Vila do Brejo',
    ocupacao: 'Dealer',
    apelido: 'Edmundo / Ed. / Grilo',
    imageUrl: 'assets/img/personagens/edmundo.jpg',
    gifUrl: "assets/img/personagens/edmundo.jpg",
    imageUrlPerfil: 'assets/img/perfil/edmundo.jpg',
    CorPrincipal: Color.fromARGB(255,204,67,51)
  ));

  //Capanga Edmundo
  personagens.add(Personagem(
    nome: 'Capangas Grilos',
    idade: '2 meses',
    altura: '20.0',
    peso: '10',
    naturalidade: 'Vila do Brejo',
    ocupacao: 'Apostadores',
    apelido: 'Grilinhos / Rapazes / Azarados',
    imageUrl: 'assets/img/personagens/capangaEdmundo.jpg',
    gifUrl: "assets/img/personagens/capangaEdmundo.jpg",
    imageUrlPerfil: 'assets/img/perfil/capangaEdmundo.jpg',
    CorPrincipal: Color.fromARGB(255,245,155,146)
  ));

  //Zida
  personagens.add(Personagem(
    nome: 'Zinédine Zidane Morales',
    idade: '30 anos',
    altura: '18.5',
    peso: '3.5',
    naturalidade: 'Selva Trepadeira',
    ocupacao: 'Bartender',
    apelido: 'Zida / Cabecinha / Morales',
    imageUrl: 'assets/img/personagens/zida.jpg',
    gifUrl: "assets/img/personagens/zida.jpg",
    imageUrlPerfil: 'assets/img/perfil/zida.jpg',
    CorPrincipal: Color.fromARGB(255,101,178,162)
  ));

  //Capanga Zida
  personagens.add(Personagem(
    nome: 'Capangas Aranhas',
    idade: '10 anos',
    altura: '16.5',
    peso: '3.0',
    naturalidade: 'Selva Trepadeira',
    ocupacao: 'Garçons',
    apelido: 'Pernudos / Teiosos / Trombadinhas',
    imageUrl: 'assets/img/personagens/capangaZida.jpg',
    gifUrl: "assets/img/personagens/capangaZida.jpg",
    imageUrlPerfil: 'assets/img/perfil/capangaZida.jpg',
    CorPrincipal: Color.fromARGB(255,88,133,200)
  ));

  //Olivia
  personagens.add(Personagem(
    nome: 'Olivia Louva-Deus',
    idade: '14 meses',
    altura: '40',
    peso: '22',
    naturalidade: '???',
    ocupacao: 'Fugitiva',
    apelido: 'Olivia / Chefinha / Ladra',
    imageUrl: 'assets/img/personagens/olivia.jpg',
    gifUrl: "assets/img/personagens/olivia.jpg",
    imageUrlPerfil: 'assets/img/perfil/olivia.jpg',
    CorPrincipal: Color.fromARGB(255,183,141,177)
  ));

  //Tio Luxo

  return personagens;
}
