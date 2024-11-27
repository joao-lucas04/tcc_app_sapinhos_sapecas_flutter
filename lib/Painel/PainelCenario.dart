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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
