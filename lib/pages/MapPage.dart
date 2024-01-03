import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../main.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: zooRed,
        title: Center(
          child: Text(
            'Mapa',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Stack(
        children: [
          PhotoView(
            imageProvider: AssetImage('lib/assets/mapa.png'), // Adjust the path accordingly
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 2,
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
            basePosition: Alignment.center,
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: GestureDetector(
              onTap: () {
                // Implement filtering functionality
                // You can show a filter dialog and update filteredIcons accordingly
              },
              child: Icon(
                Icons.filter_list,
                size: 36.0,
                color: zooRed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
