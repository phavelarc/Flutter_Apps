import 'package:flutter/material.dart';

//
// TELA Configurações
//
class TelaConfiguracoes extends StatelessWidget {
  const TelaConfiguracoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade200,
      child: Center(
        child: Text('Configurações',
            style: TextStyle(
              fontSize: 36,
            )),
      ),
    );
  }
}