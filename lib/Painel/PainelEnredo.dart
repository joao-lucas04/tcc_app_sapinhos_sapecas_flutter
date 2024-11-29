import 'package:app_sapinhos_sapecas_flutter/models/Enredo.dart';
import 'package:app_sapinhos_sapecas_flutter/views/ViewEnredo.dart';
import 'package:flutter/material.dart';

class CharacterDetailScreenEnredo extends StatefulWidget {
  final Enredo enredo;

  CharacterDetailScreenEnredo({required this.enredo});

  @override
  State<CharacterDetailScreenEnredo> createState() =>
      _CharacterDetailScreenState();
}

class _CharacterDetailScreenState extends State<CharacterDetailScreenEnredo> {
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
                      child: Image.network(widget.enredo.imageUrl,
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
                          builder: (context) => MenuScreenEnredo(),
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
                  Text(widget.enredo.titulo,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.enredo.historia,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
