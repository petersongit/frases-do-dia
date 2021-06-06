import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeMyAppBar.dart';
import 'HomeRodape.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _fraseAtual = 'Clique abaixo para gerar uma frase';
  var _frases = [
    'Que o dia comece bem e termine ainda melhor',
    'Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz',
    'Nem todos os dias são bons, mas há algo bom em cada dia',
    'Imagine uma nova história para a sua vida e acredite nela'
  ];

  void _gerarFrase() {
    int _fraseSorteada;

    _fraseSorteada = Random().nextInt(_frases.length);

    setState(() {
      _fraseAtual = _frases[_fraseSorteada].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /*width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.amber),
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseAtual,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              ElevatedButton(
                child: Text(
                  'Nova Frase'),
                  style: ElevatedButton.styleFrom(textStyle: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
                onPressed: () {
                  _gerarFrase();
                  Home();
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Rodape(),
    );
  }
}
