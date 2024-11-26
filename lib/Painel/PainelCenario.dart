import 'package:flutter/material.dart';
import 'package:app_sapinhos_sapecas_flutter/models/Cenario.dart';

class CharacterDetailScreenCenario extends StatefulWidget {
  final Cenario cenario;

  CharacterDetailScreenCenario({required this.cenario});

  @override
  State<CharacterDetailScreenCenario> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreenCenario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cenario.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${widget.cenario.nome}'),
            Text('Idade: ${widget.cenario.imgUrl}')
          ],
        ),
      ),
    );
  }
}