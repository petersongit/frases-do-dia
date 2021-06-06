import 'package:flutter/material.dart';

class Rodape extends StatelessWidget {
  final String _rodape = '';

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