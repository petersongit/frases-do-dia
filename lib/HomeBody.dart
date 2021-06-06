
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var _fraseAtual = 'Clique abaixo para gerar uma frase';
  var _frases = [
    'Que o dia comece bem e termine ainda melhor',
    'Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz',
    'Nem todos os dias são bons, mas há algo bom em cada dia',
    'Imagine uma nova história para a sua vida e acredite nela'
  ];

  void _GerarFrase() {
    int _fraseSorteada;

    _fraseSorteada = Random().nextInt(_frases.length);

    setState(() {
      _fraseAtual = _frases[_fraseSorteada].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
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
              RaisedButton(
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.green,
                onPressed: () {
                  _GerarFrase();
                  HomeBody();
                },
              )
            ],
          ),
        ),
      );
  }
}
