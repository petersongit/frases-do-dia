import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frases_do_dia/HomeBody.dart';

import 'HomeMyAppBar.dart';
import 'HomeRodape.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: HomeBody(),
      bottomNavigationBar: Rodape(),
    );
  }

}

