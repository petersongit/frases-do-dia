import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  final String _titulo = 'Frases do dia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
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
                'Clique abaixo para gerar uma frase',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
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
                  print('nova Frase');
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

class Rodape extends StatelessWidget {
  final String _rodape = 'Teste';

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.green,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(_rodape),
      ),
    );
  }
}

class RodapeDimanico extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
