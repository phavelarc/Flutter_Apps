import 'package:flutter/material.dart';

//
// TELA HOME
//
class TelaHome extends StatelessWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade200,
      child: Center(
        child: Text('Home',
            style: TextStyle(
              fontSize: 36,
            )),
      ),
    );
  }
}