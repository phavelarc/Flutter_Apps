//Importação da biblioteca (equivalente ao iostream)
import 'package:flutter/material.dart';

//
//BLOCO PRINCIPAL
//

void main(){

  //Iniciar a execução do App
  runApp(
    
    //Definir qual UI será carregada
    MaterialApp(
      title: 'Meu App',
      home: TelaPrincipal()
    )

  );

}

//
// TELA PRINCIPAL
//
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Meu App'), centerTitle: true), //centerTitle foi adicionado como teste
      body: Center(
        child: Text('Meu primeiro App com Flutter')
      ), 
    );

  }
}