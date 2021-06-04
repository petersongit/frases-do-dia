import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Frases do dia'),
      ),
      body: Text('Teste'),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('Rodapé'),
        ),
      ),
    ),
  ));
}
