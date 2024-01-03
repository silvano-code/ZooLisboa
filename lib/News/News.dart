
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NewsPage.dart';

class News {
  final String imageUrl;
  final String title;
  final String description;

  News({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
final List<News> newsList = [
  News(
    imageUrl: 'lib/assets/news1.png',
    title: 'Há uma nova cria de panda-vermelho por Lisboa.',
    description: '''
      O Jardim Zoológico anuncia o nascimento de uma cria do Panda mais ameaçado do mundo: o Panda-vermelho. Com cerca de cinco meses de idade, a pequena cria já pode ser observada a explorar a instalação com a progenitora, no entanto, ao visitar o panda é importante saber que este pequeno mamífero apresenta comportamentos maioritariamente arborícolas pelo que, se não o encontrar a alimentar-se entre os bambus da instalação, deverá procurar na copa das árvores.

      Classificada como “Em Perigo” pela União Internacional para a conservação da Natureza, IUCN, a população de Panda-vermelho apresenta uma tendência decrescente sendo atualmente considerado o panda mais ameaçado do mundo. A degradação e fragmentação do habitat natural do Panda-vermelho é uma das principais ameaças à sobrevivência da espécie.
      https://www.youtube.com/watch?v=3EQjWYzyf10
      Nos fins de semana e feriados do mês de dezembro, assim como na semana imediatamente anterior ao Natal, ao visitar a cria de Panda-vermelho vai poder ainda usufruir de uma grande agenda que o Jardim Zoológico em conjunto com o Lidl preparou para si e para a sua família.

      As atividades são gratuitas e começam logo no dia 1 de dezembro, na Casinha do Pai Natal do Lidl e Quintinha do Lidl, respetivamente na zona de acesso livre e dentro da área zoológica, abrindo as portas à magia da quadra.

      Neste Natal, visite a cria de Panda-vermelho no Jardim Zoológico, com a certeza de que ao visitar o Zoo está a contribuir para a conservação das espécies e dos seus habitats.
    ''',
  ),
  News(
    imageUrl: 'lib/assets/news2.png',
    title: 'O bebé de rinoceronte-branco já está em exibição ao lado da mamã.',
    description: '''
      O Jardim Zoológico anuncia o nascimento de uma cria de peso, um macho de Rinoceronte-branco, o segundo maior animal terrestre. Nascido no dia 15 de agosto este pequeno macho conta com mais de 40 kg e pode ser visto a explorar a instalação juntamente com Andile, a sua mãe, nascida no Jardim Zoológico em 2014.

      Classificada como “Quase Ameaçada” pela União Internacional para a Conservação da Natureza, IUCN, esta espécie apresenta uma acentuada tendência de decréscimo populacional devido à perda de habitat e à caça para o comércio ilegal do seu chifre. Nascimentos como este, vêm trazer a esperança para uma espécie cujo declínio populacional é uma das maiores tragédias da vida selvagem atual.
      https://www.youtube.com/watch?v=zOX7P7SrPoA
      Visite o Jardim Zoológico e descubra a pequena cria de rinoceronte com a certeza de que com o seu bilhete está a contribuir diretamente para a conservação das espécies e dos seus habitats.

      Visite o Jardim Zoológico! Compre online os seus bilhetes com desconto.
    ''',
  ),
  News(
    imageUrl: 'lib/assets/news3.png',
    title: 'FALSO: PASSATEMPO FACEBOOK',
    description: '''
      O Jardim Zoológico informa que não está a realizar nenhum passatempo no Facebook.

      A conta é falsa assim como a oferta. Não partilhe os seus dados nem envie dinheiro.

      O Jardim Zoológico apenas realiza passatempos por meio do seu website ou pelo Instagram @jardimzoologico_oficial.
    ''',
  ),
  // Add more news items as needed
];class NewsCard extends StatelessWidget {
  final News news;

  NewsCard({required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsPage(news: news),
                ),
              );
            },
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  news.imageUrl,
                  height: 250, // Adjust the height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity, // Set width to double.infinity
                  child: Text(
                    news.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
