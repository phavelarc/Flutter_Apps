import 'package:flutter/material.dart';

//
// TELA Notificações
//
class TelaNotificacoes extends StatelessWidget {
  const TelaNotificacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade200,
      child: Center(
        child: Text('Notificações',
            style: TextStyle(
              fontSize: 36,
            )),
      ),
    );
  }
}