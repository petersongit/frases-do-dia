import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final String _titulo = 'Frases do dia';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(_titulo),
      backgroundColor: Colors.green,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
