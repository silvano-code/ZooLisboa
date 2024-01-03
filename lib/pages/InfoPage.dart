import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: zooRed,
        title: Center(
          child: Text(
            'Informações úteis',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),




      backgroundColor: Colors.white,
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('1. Onde se localizam as bilheteiras?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'As bilheteiras situam-se à entrada da área zoológica, na área de acesso livre do Jardim Zoológico.',
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text('2. O que está incluído no bilhete?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text:
                        'O bilhete inclui acesso a todas as ',
                      ),
                      TextSpan(
                        text: 'apresentações e atrações',
                        style: TextStyle(
                          color: zooRed,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.zoo.pt/pt/visitar/apresentacoes-e-atracoes/');
                          },
                      ),
                      TextSpan(
                        text: ' do Jardim Zoológico.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('3. Saídas temporárias e reentradas na área zoológica'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('As saídas temporárias da área zoológica são permitidas. As reentradas são válidas apenas no mesmo dia da visita e o procedimento de acesso é informado na bilheteira. \nHorários das reentradas: inverno até às 17h15; verão até às 18h45')
              ),
            ],
          ),

          ExpansionTile(
            title:
                Text('4. Filmagens e fotografias: quais são os procedimentos?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Todos os visitantes podem filmar ou fotografar a sua visita ao Jardim Zoológico. No entanto é necessário pedir autorização para a realização de sessões fotográficas ou filmagens que tenham fins comerciais. As imagens tiradas no Zoo que não sejam para uso particular, não podem ser expostas, reproduzidas ou divulgadas, sem o consentimento prévio do Jardim Zoológico.',
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text(
                '5. Posso comprar bilhetes com antecedência para o Jardim Zoológico?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    text:
                        'Sim. Pode comprar bilhetes com antecedência para o Jardim Zoológico, se pretender uma entrada mais fácil e rápida - evitando assim filas nas bilheteiras - ou adquirir bilhetes para oferta. ',
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text:
                            '\n\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text: 'LOCAIS DE VENDA',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text: 'Bilheteira Online',
                        style: TextStyle(
                          color: zooRed,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://www.zoo.pt/pt/visitar/bilheteira/');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text('6. Comprar Bilhetes Online - Vantagens'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text:
                        'Será aplicado um desconto de 5% na compra on-line de bilhetes. A aquisição por este meio não permite aplicar descontos de cartões ou vouchers, assim como eventuais descontos efetuados na bilheteira do Zoo em datas temáticas.\n\n',
                      ),
                      TextSpan(
                        text: 'Vantagens da compra on-line de bilhetes:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        '\n- 120 dias para utilizar o bilhete comprado.\n- 5% de desconto aplicado no preço normal de entrada.\n\n',
                      ),
                      TextSpan(
                        text:
                        'Nota: Poderão existir outras campanhas promocionais durante o ano.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
                '7. Está disponível um bilhete para pessoas portadoras de deficiência?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Todos os visitantes, sem exceção, com incapacidade declarada igual ou superior a 60%, beneficiam de 30% de desconto na entrada do Jardim Zoológico. \n\n Este desconto é atribuído, exclusivamente, na bilheteira física do Zoo, no dia da visita e, mediante a apresentação obrigatória do Atestado Médico de Incapacidade Multiusos.',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
                '8. O Zoo tem equipamentos para pessoas portadoras de deficiência ou com mobilidade reduzida?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'O Jardim Zoológico disponibiliza aos seus visitantes cadeiras de rodas que poderão ser solicitadas, mediante disponibilidade, aos seguranças do parque - na entrada do Zoo - não sendo possível efetuar reservas das mesmas. Deverão ser devolvidas no mesmo dia, no fim da visita ao Jardim Zoológico. As cadeiras de rodas destinam-se apenas a pessoas portadoras de deficiência ou com mobilidade reduzida.',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
                '9. É permitida a entrada de cães guias no Jardim Zoológico?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Não é permitida a entrada de cães guias no Zoo. O regulamento interno do Jardim Zoológico está aprovado pelo Instituto Nacional para a Reabilitação, tutelado pelo Ministério do Trabalho, Solidariedade e Segurança Social, conforme a declaração do Veterinário responsável, nos termos do nº 3 do artigo 8º do Decreto Lei 104/2012 de 16 de maio. Esta declaração é emitida, em resposta ao determinado no art.º 3º do Decreto Lei 74/2007 de 27 de março. A presença de cães (e outros animais) é incompatível com o nosso espaço pois há várias espécies animais que podem ter comportamentos inesperados, colocando em perigo a sua própria vida e a segurança do público.',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('10. Posso deslocar-me ao Jardim Zoológico de bicicleta?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Sim, o Jardim Zoológico dispõe de parqueamento para bicicletas, junto à entrada principal. O suporte de estacionamento tem capacidade para 10 bicicletas. \nO visitante deverá trazer cadeado para prender a sua bicicleta.',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('11. Onde posso almoçar ou lanchar?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text:
                        'O Jardim Zoológico dispõe de vários espaços de restauração localizados na área de acesso livre, na entrada do parque. Alguns proporcionam condições especiais para escolas e grupos.\n\n',
                      ),
                      TextSpan(
                        text: 'Contactos\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                        'Papa Zoo - tel.: 212 442 412/ 936 839 315\nMcDonalds - tel.: 210 516 845 / Escolas e Grupos: grupos.mczoo@gmail.com\nGuaraná Brasil - tel.: 965 135 920\nBar África - tel.: 217 273 547/ 966 418 461\n\n',
                      ),
                      TextSpan(
                        text:
                        'O Jardim Zoológico dispõe também de um ',
                      ),
                      TextSpan(
                        text: 'Parque de Merendas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: zooRed,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.zoo.pt/pt/visitar/servicos/');
                          },
                      ),
                      TextSpan(
                        text:
                        ', renovado, com mesas e bancos para as refeições, e "casinhas de aves" para as crianças brincarem, peças feitas exclusivamente com material reciclado. Este espaço localizado no ',
                      ),
                      TextSpan(
                        text: 'Bosque Encantado',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: zooRed,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch(
                                'https://www.zoo.pt/pt/visitar/servicos/');
                          },
                      ),
                      TextSpan(
                        text:
                        ' possui as condições necessárias para realizar as refeições de pequenos ou grandes grupos, tem muita sombra e instalações sanitárias.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('12. Quais as normas a respeitar no Jardim Zoológico?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Manter os espaços limpos'),
                    Text('- Não alimentar os animais'),
                    Text('- Não pisar os espaços verdes nem arrancar plantas e flores'),
                    Text('- Não gritar nem provocar os animais'),
                    Text('- Respeitar as vedações das zonas verdes e das instalações dos animais'),
                    Text('- Não é permitida a entrada de animais de estimação'),
                    Text('- Não é permitida a entrada de bicicletas, trotinetes, skates, scooters e patins em linha'),
                    Text('- Não é permitido jogar à bola'),
                    Text('- Reservado o direito de admissão'),
                    Text('- Respeite a sinalética'),
                    Text('- Não toque nos vidros'),
                    SizedBox(height: 16.0),
                    Text(
                      'Nota',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'O não cumprimento das normas do Parque pode implicar a expulsão do visitante ou, mesmo, um procedimento legal. O Jardim Zoológico não se responsabiliza por acidentes ocorridos pelo não cumprimento das normas de segurança.',
                    ),
                  ],
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(
                '13. O Jardim Zoológico tem um local para guardar bagagens?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    text:
                        'O Parque dispõe de cacifos para guardar bagagens ou outros pertences. ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Os cacifos situam-se depois das bilheteiras, na área zoológica, e estão sujeitos a disponibilidade.',

                      ),
                      TextSpan(
                        text:
                            '\n\nNota: A utilização dos cacifos poderá ser efetuada mediante o uso de um cadeado trazido pelo visitante ou, caso não seja portador de um, poderá adquiri-lo na Loja do Zoo. Dimensão dos cacifos: 90 x 50 x 70 cm (Altura x Largura x Profundidade).',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text(
                '14. As apresentações ou atrações podem ser canceladas ou os seus horários alterados?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Tenha em atenção que por motivos de ordem técnica, operacional, meteorológica, bem estar animal ou outra razão, poderá ocorrer a suspensão de qualquer uma das apresentações ou atrações, e alterações dos respetivos horários em determinados dias, sem aviso prévio.',
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text('15. Teleférico: Regras de Segurança'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Menores de 12 anos terão de ser acompanhados por um adulto maior de 18 anos (sujeito à apresentação de BI/CC). O teleférico não é aconselhado a pessoas com mobilidade reduzida, problemas cardíacos, vertigens ou grávidas. O teleférico tem um movimento contínuo, só parando em caso de emergência. Não são permitidas cadeiras de rodas e carrinhos de criança nas cabines do teleférico. De acordo com o Decreto-Lei nº 58/2016, o atendimento prioritário é obrigatório.',
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text('16. Cemitério de Animais de Estimação'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: RichText(
                  text: TextSpan(
                    text:
                        'Num local do Jardim Zoológico onde já se encontrava um pequeno monumento artístico elevado em lembrança de um cão pertencente a um cidadão britânico e outras sepulturas com lápides, foi criado em 1934 o primeiro cemitério de animais domésticos em Portugal.',
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text:
                            '\n\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text: 'Horário de atendimento telefónico',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            'Dias úteis: das 9h30 às 13h00 e das 14h30 às 17h30', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            '\n\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text: 'Cemitério',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            'Dias úteis: das 9h30 às 12h e das 13h às 16h30 ', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            '\n\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text: 'Preçário',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            '\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            'Enterro: 132 € (marcação prévia obrigatória)', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            '\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            'Renovação: 94 €', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            '\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            'Levantamento: 110 € ', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text:
                            '\n\n', // Add newlines for spacing between paragraphs
                      ),
                      TextSpan(
                        text: 'Contactos',
                        style: TextStyle(
                          color: zooRed,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('https://www.zoo.pt/pt/visitar/contactos/');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          ExpansionTile(
            title: Text('16. Zonas com WI-fi gratuito no Jardim Zoológico'),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('- Bilheteiras'),
                    Text('- Tapada do Lince-ibérico'),
                    Text('- Templo dos Primatas (interior e exterior)'),
                    Text('- Parque de Merendas'),
                    Text('- Elefantes e Leões'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
