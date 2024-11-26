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

  return personagens;
}
