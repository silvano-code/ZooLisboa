import 'package:flutter/material.dart';

class HistoriaZooPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('História do Jardim Zoológico'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildParagraph(
            'Inaugurado em 1884, o Jardim Zoológico de Lisboa foi o primeiro parque com fauna e flora da Península Ibérica. '
                'Foram vários os seus fundadores - Dr. Pedro Van Der Laan, José Thomaz Sousa Martins e o Barão de Kessler - que contaram com o apoio de várias personalidades, o Rei D. Fernando II e o zoólogo José Vicente Barboza do Bocage.',
          ),
          _buildParagraph(
            'As primeiras instalações situaram-se no Parque de São Sebastião da Pedreira, que foi cedido gratuitamente pelos seus proprietários. '
                'Mais tarde, o parque mudou-se para a Palhavã e a 28 de maio de 1905, foram inauguradas as novas e definitivas instalações na Quinta das Laranjeiras. '
                'No dia 12 de março de 1913, o Jardim Zoológico foi declarado Instituição de Utilidade Pública.',
          ),
          _buildImage('lib/assets/historia1.png'),
          _buildParagraph(
            'As inúmeras remessas de animais vindos de África e do Brasil contribuíram para que, ao longo dos anos, o Jardim Zoológico tivesse uma das coleções de animais mais vastas e diversificadas do mundo. '
                'Destacaram-se, na realidade, alguns governadores das ex-províncias ultramarinas no contributo para o enriquecimento da coleção zoológica com exemplares de espécies exóticas, pouco conhecidas e muito atrativas.',
          ),
          _buildImage('lib/assets/historia2.png'),
          _buildParagraph(
            'Em 1952, a Câmara Municipal de Lisboa galardoou o Jardim Zoológico com a Medalha de Ouro da Cidade. '
                'A queda do Estado Novo em 1974 e a consequente independência das antigas colónias em África, significou a quebra do forte apoio prestado ao Jardim Zoológico pelas autoridades na diversificação e renovação da coleção animal.  '
                'Por esta altura, o número de visitantes também diminuiu de forma substancial e ocorreram cortes radicais dos subsídios estatais.',
          ),
          _buildParagraph(
            'Assim, foi necessário desenvolver e implementar uma nova estratégia de gestão para o Jardim Zoológico, adequando-o aos valores e necessidades da época.',
          ),
          _buildParagraph(
            'Em 1990, a nova política de gestão adotada por Félix Naharro Pires, que entretanto tomou posse como Presidente do Jardim Zoológico, teve por objetivos a modernização das instalações existentes, assim como dos serviços. '
                'Deste modo, foram criadas áreas de trabalho específicas com objetivos próprios, para melhorar a coleção e o bem-estar animal, a sua alimentação e os cuidados médico-veterinários.',
          ),
          _buildParagraph(
            'Em paralelo, foram criados os serviços comerciais, marketing, relações públicas e imprensa, de modo a dinamizar o Parque como parceiro privilegiado das empresas. '
                'Promover a educação para a conservação junto do público visitante foi, também, uma das principais preocupações, que rapidamente mereceu a criação de um serviço próprio, o Centro Pedagógico.',
          ),
          _buildParagraph(
            'Atualmente o Jardim Zoológico representa o papel de educador, com a vantagem de possuir uma das melhores salas de aula do país, cuja coleção animal, espaço e atividades proporcionam uma aprendizagem atraente e eficaz. '
                'O Jardim Zoológico deixou de ser uma montra de animais para assumir um papel ativo na proteção e conservação da Natureza. A melhoria das instalações para os animais permitiram o aumento da taxa de natalidade.',
          ),
          _buildParagraph(
            'O Hospital Veterinário inaugurado em 2008, foi considerado o melhor da Europa, pela EAZA - Associação Europeia de Zoos e Aquários.',
          ),
          _buildParagraph(
            'Hoje em dia, o Jardim Zoológico está diferente, tem uma nova missão e uma nova mensagem. '
                'Apresenta novas atrações e instalações. O Jardim é um espaço onde aliada à conservação e à educação está uma forte componente de entretenimento e diversão. '
                'Neste novo Zoo habitam cerca de 2000 animais num conjunto de aproximadamente 300 espécies, entre mamíferos, aves, répteis e anfíbios.',
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }

  Widget _buildImage(String imagePath) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Image.asset(imagePath),
    );
  }
}
