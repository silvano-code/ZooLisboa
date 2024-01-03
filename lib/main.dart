import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zoo/pages/AtracoesPage.dart';
import 'package:zoo/pages/HomePage.dart';
import 'package:zoo/pages/InfoPage.dart';
import 'package:zoo/pages/MapPage.dart';
import 'package:zoo/pages/SettingsPage.dart';
import 'package:zoo/ThemeProvider.dart'; // Import the ThemeProvider class

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}


Color zooRed = const Color.fromARGB(255, 179, 58, 47);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoo Lisboa App',
      home: const ZooHomePage(),
    );
  }
}

class ZooHomePage extends StatefulWidget {
  const ZooHomePage({Key? key}) : super(key: key);

  @override
  _ZooHomePageState createState() => _ZooHomePageState();
}

class _ZooHomePageState extends State<ZooHomePage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
            HomePage(),
            AtracoesPage(),
            MapPage(),
            InfoPage(),
            SettingsPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: zooRed,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ZOO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye),
            label: 'Atrações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Informações úteis',
          ),

        ],
      ),
    );
  }
}