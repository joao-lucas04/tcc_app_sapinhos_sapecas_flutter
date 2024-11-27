import 'dart:async';
import 'package:app_sapinhos_sapecas_flutter/views/ViewPersonagem.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
    );
  }
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // Inicia o Timer para alternar automaticamente entre as páginas
    _timer = Timer.periodic(Duration(seconds: 7), (Timer timer) {
      if (_currentPage < 3) {
        setState(() {
          _currentPage++;
        });
      } else {
        setState(() {
          _currentPage = 0;
        });
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1100), // Duração da transição suave
        curve: Curves.easeInOut, // Curva de transição suave
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! < 0) {
            // Se arrastar para cima, navega para a tela do menu
            Navigator.of(context).push(_createSlideUpPageRoute());
          }
        },
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: [
                Image.network(
                  'assets/img/home/img1.jpeg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Image.network(
                  'assets/img/home/img2.jpeg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Image.network(
                  'assets/img/home/img3.jpeg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Image.network(
                  'assets/img/home/img4.jpeg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ],
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
            ),
            Center(
              child: Column(
                children: [
                  
                  Image.network(
                    'assets/img/home/titulo.png',
                  ),
                  
                  SizedBox(height: 290,),

                  Text(
                    'Arraste para cima para avançar',
                    style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8)),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 95, // Ajuste a altura conforme necessário
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, const Color.fromARGB(255, 218, 215, 215).withOpacity(0.8)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PageRouteBuilder _createSlideUpPageRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => MenuScreenPersonagem(), // Tela de destino
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); // Começa fora da tela (embaixo)
        const end = Offset.zero; // Termina no centro da tela
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }
}
