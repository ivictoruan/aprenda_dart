import 'package:aprenda_dart/src/shared/widgets/content_widget.dart';
import 'package:flutter/material.dart';

List<Map<String, Object>> basicContent = [
  
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Configuração Dart',
    'contentWidget': Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.85),
        title: const Text('Configuração Dart'),
      ),
      body: Column(
        children: const [Text('Conteúdo sobre configurações Dart')],
      ),
    ),
  },
  {
    'icon':
        'https://seeklogo.com/images/D/dart-logo-FDA1939EC4-seeklogo.com.png',
    'titleContent': 'Hello, Dart!',
    'contentWidget': Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.85),
        title: const Text('Hello, Dart!'),
      ),
      body: Column(
        children: const [Text('Conteúdo sobre Hello Dart')],
      ),
    ),
  },
  {
    'icon': // MUDAR?
        'https://img1.gratispng.com/20180925/th/kisspng-logo-font-brand-product-fileantu-org-kde-plasma-binaryclock-svg-wikimed-5baa5a4452fec1.37510502153789088434.jpg',
    'titleContent': 'Numéros',
    'contentWidget': const ContentWidget(
        titleAppBar: 'Numéros',
        theoryWidget: Text('shit1'),
        exercisesWidget: Text('shit2')),
  },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Strings - Parte 1',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Strings - Parte 2',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Formatação de Impressão',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Listas - Parte 1',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Listas - Parte 2',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Dicionários', // rever
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Tuplas', // rever
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Sets', // rever
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Operadores de Comparação',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'if, Else if, Else',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'For',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'While',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Range',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Funções',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Declarações Aninhadas e escopo', // rever
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Programação Orientada à Objetos',
  // },
  // {
  //   'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
  //   'titleContent': 'Módulos e Pacotes',
  // },
];

const List<Map<String, String>> advancedContent = [
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
  {
    'icon': 'https://iconape.com/wp-content/files/rc/10524/png/settings.png',
    'titleContent': 'Algum assunto avançado sobre Dart',
  },
];

const List<Map<String, Object>> drawerContent = [
  {
    'titleContent': 'Documentação Dart',
    'icon': Icons.code,
  },
  {
    'titleContent': 'Mais Exercícios',
    'icon': Icons.eco_rounded,
  },
  {
    'titleContent': 'Aprenda Flutter',
    'icon': Icons.flutter_dash,
  },
  {
    'titleContent': 'Compartilhar',
    'icon': Icons.share,
  },
  {
    'titleContent': 'Avaliar o Aplicativo',
    'icon': Icons.comment,
  },
];



// 'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',

