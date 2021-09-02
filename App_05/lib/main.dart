import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IMC',

      // TEMAS
      theme: ThemeData(
        primaryColor: Colors.blue.shade900,
        backgroundColor: Colors.grey.shade100,

        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 24,
            color: Colors.grey.shade900,
          ),

          //LabelStyle
          headline2: TextStyle(
            fontSize: 20,
            color: Colors.blue.shade900,
          ),

          //HintStyle
          headline3: TextStyle(
            fontSize: 20,
            color: Colors.grey.shade300,
          ),

        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue.shade900,
            textStyle: TextStyle(
              fontSize: 24,
            ),
          ),
        ),

      ),


      home: TelaPrincipal(),
    )
  );
}

//
// TELA PRINCIPAL
// Stateful = stf
class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  //Declaração dos atributos (variáveis) que serão utilizados
  //para controlar os valores informados nos campos de texto
  //Peso e Altura
  var txtPeso = TextEditingController();
  var txtAltura = TextEditingController();

  //Declaração da chave que identifica unicamente o formulário
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){
              
              setState(() {
                formKey.currentState!.reset();
                txtPeso.text = "";
                txtAltura.text = "";
                FocusScope.of(context).unfocus();
              });

            },
          )
        ],
      ),

      backgroundColor: Theme.of(context).backgroundColor,

      body: Container(
        padding: EdgeInsets.all(30),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Icon(
                Icons.people, 
                size: 120, 
                color: Theme.of(context).primaryColor,
              ),
              campoTexto('Peso', txtPeso),
              campoTexto('Altura', txtAltura),
              botao('Calcular'),
            ],
          ),
        ),
      ),
      
    );
  }

  //
  // CAMPO DE TEXTO para entrada de dados
  //
  Widget campoTexto(rotulo, variavel){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),

      child: TextFormField(
        style: Theme.of(context).textTheme.headline1,
        controller: variavel,
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: Theme.of(context).textTheme.headline2,
          hintText: 'Entre com o valor',
          hintStyle: Theme.of(context).textTheme.headline3,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        //
        // VALIDADOR
        //
        validator: (value){
          value = value!.replaceFirst(',', '.');
          if (double.tryParse(value) == null){
            return 'Entre com um valor numérico';
          }else{
            return null;
          }
        },

      ),

    );
  }

  //
  // BOTÃO
  //
  Widget botao(rotulo){
    return Container(
      width: 200,
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        child: Text(rotulo),
        onPressed: (){
          //evento que ocorre ao pressionar o botão
          //print('botão pressionado');


          //executar o Validador
          if (formKey.currentState!.validate()){

          //O método setState permite a manipulação do estado da UI do App
          setState(() {
            //leitura dos valores dos campos de texto
            double peso = double.parse(txtPeso.text.replaceFirst(',', '.'));
            double altura = double.parse(txtAltura.text.replaceFirst(',', '.'));
            double imc = peso / pow(altura, 2);

            //exibir o resultado
            caixaDialog('IMC: ${imc.toStringAsFixed(2)}');
          });

          }

        },
        /*onLongPress: (){
          print('botão pressionado + longo');
        },*/
      ),

    );
  }

  //
  // CAIXA DE DIÁLOGO
  //
  caixaDialog(msg){
    return showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Resultado'),
          content: Text(msg),
          actions: [
            TextButton(
              child: Text('Fechar'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }  
    );
  }

}
