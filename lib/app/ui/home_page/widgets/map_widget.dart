import 'package:flutter/material.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  Offset position = const Offset(-160, -160);
  late Size screenSize; // Tamanho da tela.
  late Size imageSize; // Tamanho da imagem.


  Offset _calculateNewPosition(Offset delta) {
    // Limites para restringir o movimento da imagem.
    double newX = position.dx + delta.dx;
    double newY = position.dy + delta.dy;

    // Calcula os limites com base no tamanho da tela e da imagem.
    double minX = -2416;
    double minY = -438;
    double maxX = 0;
    double maxY = 0;

    // Garante que a posição não exceda os limites.
    newX = newX.clamp(minX, maxX);
    newY = newY.clamp(minY, maxY);

    return Offset(newX, newY);
  }


  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: position.dx,
            top: position.dy,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  position = _calculateNewPosition(details.delta);
                });
              },
              child: LayoutBuilder(
                builder: (context, constraints) {
                  imageSize = Size(constraints.maxWidth, constraints.maxHeight);
                  return Image.asset(
                    'assets/images/map.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
          const Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search, color: Color(0xFF1A8300),),
                labelText: 'Insira um local...',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
