import 'package:app_sapinhos_sapecas_flutter/models/Enredo.dart';
import 'package:flutter/material.dart';

class CharacterDetailScreenEnredo extends StatefulWidget {
  final Enredo enredo;

  CharacterDetailScreenEnredo({required this.enredo});

  @override
  State<CharacterDetailScreenEnredo> createState() => _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreenEnredo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quadrinho 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${widget.enredo.historia}'),
          ],
        ),
      ),
    );
  }
}