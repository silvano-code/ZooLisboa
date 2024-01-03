import 'package:flutter/material.dart';

class AtracoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atrações'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildAttractionRow(
            title: 'Baía dos Golfinhos',
            description: 'Venha conhecer a incrível Baía dos Golfinhos!',
            imagePath: 'lib/assets/atracao1.png',
          ),

          _buildAttractionRow(
            title: 'Bosque Encantado',
            description: 'Explore o mágico Bosque Encantado!',
            imagePath: 'lib/assets/atracao2.png',
          ),

          _buildAttractionRow(
            title: 'Pelicanos',
            description: 'Veja os fascinantes Pelicanos em ação!',
            imagePath: 'lib/assets/atracao3.png',
          ),

          _buildAttractionRow(
            title: 'Reptilário',
            description: 'Descubra criaturas incríveis no Reptilário!',
            imagePath: 'lib/assets/atracao4.png',
          ),

          _buildAttractionRow(
            title: 'Teleférico',
            description: 'Aprecie a vista panorâmica no Teleférico!',
            imagePath: 'lib/assets/atracao5.png',
          ),

          _buildAttractionRow(
            title: 'Tapada do Lince-Ibérico',
            description: 'Conheça a Tapada do Lince-Ibérico!',
            imagePath: 'lib/assets/atracao6.png',
          ),

          _buildAttractionRow(
            title: 'Templo dos Primatas',
            description: 'Visite o místico Templo dos Primatas!',
            imagePath: 'lib/assets/atracao7.png',
          ),

          _buildAttractionRow(
            title: 'Vale dos Tigres',
            description: 'Admire a majestade dos Tigres no Vale!',
            imagePath: 'lib/assets/atracao8.png',
          ),

          _buildAttractionRow(
            title: 'Quintinha do Lidl',
            description: 'Divirta-se na acolhedora Quintinha do Lidl!',
            imagePath: 'lib/assets/atracao9.png',
          ),

          _buildAttractionRow(
            title: 'NOVIDADE - Savana MEO',
            description: 'Descubra a emocionante Savana MEO!',
            imagePath: 'lib/assets/atracao10.png',
          ),
        ],
      ),
    );
  }

  Widget _buildAttractionRow({
    required String title,
    required String description,
    required String imagePath,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Right side
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 16.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 150.0,
                width: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
