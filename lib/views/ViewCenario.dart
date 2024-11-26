import 'package:app_sapinhos_sapecas_flutter/main.dart';
import 'package:app_sapinhos_sapecas_flutter/models/BarraNav.dart';
import 'package:app_sapinhos_sapecas_flutter/models/Cenario.dart';
import 'package:app_sapinhos_sapecas_flutter/Painel/PainelCenario.dart';
import 'package:app_sapinhos_sapecas_flutter/views/ViewEnredo.dart';
import 'package:app_sapinhos_sapecas_flutter/views/ViewPersonagem.dart';
import 'package:flutter/material.dart';

class MenuScreenCenario extends StatefulWidget {
  @override
  State<MenuScreenCenario> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreenCenario> {
  // Lista de personagens para exibir
  final List<Cenario> cenarios = getCenarios();

  int _selectedIndex = 1; // Índice da aba selecionada

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
        // Já estamos na tela de cenários, não faz nada
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuScreenEnredo(), // Tela de Funcionários
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54,101,42),
        title: Text('Cenários', style: TextStyle(
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
          itemCount: cenarios.length, // Número total de itens no grid
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Número de colunas no grid
            crossAxisSpacing: 8.0, // Espaço horizontal entre os cards
            mainAxisSpacing: 8.0, // Espaço vertical entre os cards
            childAspectRatio:
                0.84, // Proporção de largura para altura dos itens
          ),
          itemBuilder: (context, index) {
            final cenario = cenarios[index];
            return CharacterItem(
              imageUrl: cenario.imgUrl, // URL da imagem do personagem
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CharacterDetailScreenCenario(
                      cenario: cenario, // Passa o personagem completo
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex, // Atualiza o índice selecionado
        onTap: _onItemTapped, // Passa a função onTap para alterar o índice
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
          borderRadius:
              BorderRadius.circular(8.0), // Bordas arredondadas no card
        ),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(8.0), // Aplica bordas arredondadas à imagem
          child: Image.network(
            // Usa Image.asset para imagens locais
            imageUrl, // URL da imagem
            fit: BoxFit
                .cover, // Ajusta a imagem para cobrir todo o espaço disponível
          ),
        ),
      ),
    );
  }
}
