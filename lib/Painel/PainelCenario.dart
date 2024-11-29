// ignore_for_file: non_constant_identifier_names

import 'package:app_sapinhos_sapecas_flutter/views/ViewCenario.dart';
import 'package:flutter/material.dart';
import 'package:app_sapinhos_sapecas_flutter/models/Cenario.dart';

class CharacterDetailScreenCenario extends StatefulWidget {
  final Cenario cenario;

  CharacterDetailScreenCenario({required this.cenario});

  @override
  State<CharacterDetailScreenCenario> createState() =>
      _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreenCenario> {
  int indexAtual = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Envolve a imagem e o ícone em um Stack
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 9, right: 9, top: 9),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(widget.cenario.imgUrl,
                          height: 400, fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuScreenCenario(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.cenario.nome,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.cenario.Descricao,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Row(
              children: [
                IconButton(
                  iconSize: 35,
                  icon: const Icon(Icons.keyboard_arrow_left),
                  color: Colors.black,
                  onPressed: AnteriorImagem),
                SizedBox(width: 5),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                        widget.cenario.ImagensCenarios[indexAtual],
                        width: 385,
                        height: 280,
                        fit: BoxFit.cover)),
                SizedBox(width: 5),
                IconButton(
                    iconSize: 35,
                    icon: const Icon(Icons.keyboard_arrow_right),
                    color: Colors.black,
                    onPressed: ProximaImagem),
          
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Objetivo',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.cenario.Descricao,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ProximaImagem() {
    setState(() {
      indexAtual++;
      if (indexAtual >= widget.cenario.ImagensCenarios.length) {
        indexAtual = 0;
      }
    });
  }

  AnteriorImagem() {
      setState(() {
        indexAtual--;
        if (indexAtual < 0 ) {
          indexAtual = widget.cenario.ImagensCenarios.length-1;
        }
      });
  }
}
