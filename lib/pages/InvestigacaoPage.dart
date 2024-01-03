import 'package:flutter/material.dart';

class InvestigacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conservação e Investigação'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle('A extinção é para sempre!'),
          _buildParagraph(
            'A rápida expansão da população humana e a utilização pouco sustentável dos recursos naturais do Planeta, representam um forte impacto sobre a biodiversidade que, consequentemente, está a diminuir de forma avassaladora ao longo dos últimos anos. A vida na Terra está ameaçada.',
          ),
          _buildParagraph(
            'Jardins zoológicos, aquários, parques e reservas da vida selvagem, assumem atualmente um papel fundamental para a sobrevivência das espécies em vias de extinção. Em conjunto, estas instituições, são hoje verdadeiras Arcas de Noé. Contribuem e colaboram através da educação, da investigação científica e da implementação ao nível local, europeu e mundial, de medidas de conservação das espécies e dos seus habitats até à reintrodução de espécies na Natureza.',
          ),
          SizedBox(height: 16.0),
          _buildSectionTitle('Investigação Científica'),
          _buildParagraph(
            'A Investigação Científica é uma ferramenta central para que se conheça melhor o Reino Animal e os ecossistemas. Permite reunir informações valiosas acerca da biologia, reprodução e comportamento de cada espécie, e inferir sobre o ecossistema em que se insere. Estas informações são imprescindíveis para que o maneio dos animais seja o mais correto quando sob cuidados humanos, e para que se tomem medidas de conservação adequadas no habitat.',
          ),
          _buildParagraph(
            'A investigação permite que a conservação das espécies seja feita com maior taxa de sucesso, independentemente de se tratar de conservação in situ ou ex situ.',
          ),
          _buildParagraph(
            'O Jardim Zoológico colabora com diversas instituições, universidades e escolas nacionais e internacionais, no âmbito académico das mais diversas áreas como é o caso da biologia, etologia e medicina veterinária. E participa ativamente em projetos de investigação científica.',
          ),
          SizedBox(height: 16.0),
          _buildSectionTitle('Projetos em destaque:'),
          _buildListTile(
            'Primeira inseminação artificial de uma fêmea Tigre-da-sibéria (Panthera tigris altaica) com sucesso na Europa, em 1997, numa parceria com a estação Zootécnica Nacional.',
          ),
          _buildListTile(
            'Primeiro Biobanking para reprodução assistida no Irão',
            details: [
              'É o primeiro bio-repositório que armazena amostras biológicas de espécies animais para uso em pesquisas médico-veterinárias no Irão, que se destina a espécies ameaçadas da região, como o Leopardo-da-pérsia e a Chita-asiática.',
            ],
          ),
          _buildListTile(
            'O Jardim Zoológico apoiou a participação do Dr. Rui Bernardino (médico veterinário do JZ e Vet Co-Advisor do EEP do Leopardo-da-pérsia) e da Dra. Imke Lüders (GEOLifes – Consultora em Reprodução). O trabalho foi executado no Teerão, em três instituições, o Zoo de Teerão (juntamente com Dr. Iman Memarian), o Asiatic Cheetah Research e o Husbandry Headquarter of Pardisan Park.',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16.0),
    );
  }

  Widget _buildListTile(String title, {List<String>? details}) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: details != null ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: details.map((detail) => Text(detail)).toList(),
        ) : null,
      ),
    );
  }
}
