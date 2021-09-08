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
      //margin: EdgeInsets.only(left: 10),
      //margin: EdgeInsets.fromLTRB(10, 0, 0, 0),

      //ESPAÇAMENTO (interna)
      padding: EdgeInsets.all(30),

      //DECORAÇÃO
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),

        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),

      ),

      width: MediaQuery.of(context).size.width * 0.48,

      //Informações do Carro
      child: Column(
        children: [
          //Informações do carro na mesma linha
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.marca, style: 
                TextStyle(
                  fontSize: 18.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(this.modelo, style:
                TextStyle(
                  fontSize: 18.2,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
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