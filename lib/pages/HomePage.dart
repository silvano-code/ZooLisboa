import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoo/pages/HistoriaZooPage.dart';
import '../News/News.dart';
import '../News/NewsPageIndicator.dart';
import '../main.dart';
import 'InvestigacaoPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle redTextStyle = TextStyle(
      color: zooRed,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 32),
                Image.asset(
                  'lib/assets/logo.png',
                ),
                SizedBox(height: 16),
                Text(
                  'Bem-vindos',
                  style: redTextStyle,
                ),
                SizedBox(height: 16),
                // News Section
                NewsPageSection(),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    color: zooRed, // Set the background color to red
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PROXIMOS EVENTOS',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Set the text color to white
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              _showMaintenanceDialog(context);
                              },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 24,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Ver agenda',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Two Separate Rows with Padding
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150, // Adjust the height as needed
                          padding: EdgeInsets.all(16),
                          color: zooRed,
                          child: Column(
                            children: [
                              Text(
                                'Conservação e Investigação',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            InvestigacaoPage()),
                                  );
                                },
                                child: Text(
                                  'Saber mais',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 16),
                      // Add spacing between the two containers
                      Expanded(
                        child: Container(
                          height: 150, // Adjust the height as needed
                          padding: EdgeInsets.all(16),
                          color: zooRed,
                          child: Column(
                            children: [
                              Text(
                                'História do Zoo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 40),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HistoriaZooPage()),
                                  );
                                },
                                child: Text(
                                  'Saber mais',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
                // Buttons
                Column(
                  children: [
                    // Text for Instagram
                    TextButton(
                      onPressed: () {
                        launch(
                            'https://www.instagram.com/jardimzoologico_oficial/');
                      },
                      child: Text(
                        'Vê o nosso Instagram',
                        style: redTextStyle,
                      ),
                    ),
                    // Text for Website
                    TextButton(
                      onPressed: () {
                        launch('https://www.zoo.pt/');
                      },
                      child: Text(
                        'Visita o nosso website',
                        style: redTextStyle,
                      ),
                    ),
                    // Text for Directions
                    TextButton(
                      onPressed: () {
                        launch('https://maps.app.goo.gl/LDbyXJeDTMQqcz3Y8');
                      },
                      child: Text(
                        'Encontra-nos',
                        style: redTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Bottom padding to separate the column from the bottom of the screen
      ],
    );
  }
}
void _showMaintenanceDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Em manutenção'),
        content: Text('A agenda está em manutenção. Tente novamente mais tarde.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}


class NewsPageSection extends StatefulWidget {
  @override
  _NewsPageSectionState createState() => _NewsPageSectionState();
}

class _NewsPageSectionState extends State<NewsPageSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280, // Adjust the height as needed
          child: PageView.builder(
            itemCount: newsList.length,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return NewsCard(news: newsList[index]);
            },
          ),
        ),
        NewsPageIndicator(
          itemCount: newsList.length,
          currentIndex: _currentPage,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
