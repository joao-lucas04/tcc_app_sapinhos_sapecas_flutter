import 'package:app_sapinhos_sapecas_flutter/main.dart';
import 'package:app_sapinhos_sapecas_flutter/models/BarraNav.dart';
import 'package:app_sapinhos_sapecas_flutter/models/Enredo.dart';
import 'package:app_sapinhos_sapecas_flutter/Painel/PainelEnredo.dart';
import 'package:app_sapinhos_sapecas_flutter/views/ViewCenario.dart';
import 'package:app_sapinhos_sapecas_flutter/views/ViewPersonagem.dart';
import 'package:flutter/material.dart';

class MenuScreenEnredo extends StatefulWidget {
  @override
  State<MenuScreenEnredo> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreenEnredo> {
  final List<Enredo> enredos = getEnredos();

  int _selectedIndex = 2; // Índice da aba selecionada

  void _onItemTapped(int index) {
    // Atualiza o índice selecionado e navega para a tela correspondente
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuScreenPersonagem(), // Tela de Personagens
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuScreenCenario(), // Tela de Personagens
          ),
        );
        break;
      case 2:
        
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54,101,42),
        title: Text('Enredos', style: TextStyle(
          color: Colors.white
        )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), // Ícone de seta para voltar
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => MainApp(), // Tela principal
              ),
              (Route<dynamic> route) =>
                  false, // Remove todas as rotas anteriores
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Espaçamento ao redor do GridView
        child: GridView.builder(
          itemCount: enredos.length, // Número total de itens no grid
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de colunas no grid
            crossAxisSpacing: 8.0, // Espaço horizontal entre os cards
            mainAxisSpacing: 8.0, // Espaço vertical entre os cards
            childAspectRatio: 0.84, // Proporção de largura para altura dos itens
          ),
          itemBuilder: (context, index) {
            final enredo = enredos[index];
            return CharacterItem(
              imageUrl: enredo.imageUrl, // URL da imagem do personagem
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailScreenEnredo(
                      enredo: enredo, // Passa o personagem completo
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex, // Passa o índice selecionado
        onTap: _onItemTapped, // Passa a função onTap para atualizar o índice
      ),
    );
  }
}

class CharacterItem extends StatelessWidget {
  final String imageUrl; // URL da imagem a ser exibida no card
  final VoidCallback onTap; // Callback para quando o card for clicado

  CharacterItem({required this.imageUrl, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Chama o método onTap quando o card é clicado
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0), // Bordas arredondadas no card
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0), // Aplica bordas arredondadas à imagem
          child: Image.network( // Usa Image.asset para imagens locais
            imageUrl, // URL da imagem
            fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço disponível
          ),
        ),
      ),
    );
  }
}
