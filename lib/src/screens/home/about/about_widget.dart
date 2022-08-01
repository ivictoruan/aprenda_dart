import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.85),
        title: const Text('Sobre'),
      ),
      body: Column(
        children: const [Text('Informações sobre o app'),],
      ),
    );
  }
}