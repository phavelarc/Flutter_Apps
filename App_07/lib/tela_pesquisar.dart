import 'package:flutter/material.dart';

//
// TELA Pesquisar
//
class TelaPesquisar extends StatelessWidget {
  const TelaPesquisar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: Center(
        child: Text('Pesquisar',
            style: TextStyle(
              fontSize: 36,
            )),
      ),
    );
  }
}