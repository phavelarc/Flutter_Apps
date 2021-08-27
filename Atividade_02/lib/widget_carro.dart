import 'package:flutter/material.dart';

class WidgetCarro extends StatelessWidget {


  //Atributos que serão utilizados para receber informações
  final String marca;
  final String modelo;
  final String foto;

  //Construtor
  //O primeiro método que é executado quando o objeto da classe é instanciado

  const WidgetCarro(this.marca, this.modelo, this.foto, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      //MARGENS (externa)
      //margin: EdgeInsets.all(30),
      //margin: EdgeInsets.only(top: 30),
      //margin: EdgeInsets.only(left: 30),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),

      //ESPAÇAMENTO (interna)
      padding: EdgeInsets.all(30),

      //DECORAÇÃO
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),

        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),

        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),

        //color: Colors.blue[100],

      ),

      width: MediaQuery.of(context).size.width*0.90,
      //height: 300,


      child: Column(
        children: [
          Text(this.marca, style: 
            TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(this.modelo, style: 
            TextStyle(
              fontSize: 32,
              fontStyle: FontStyle.italic,
            ),
          ),

          //Incluir a foto do Carro
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
            ),
            child: Image.asset(this.foto)
          ),
        ],
      ),
    );
  }
}