//
// TELA PRINCIPAL
//
import 'package:flutter/material.dart';

import 'widget_carro.dart';

class TelaPrincipal extends StatelessWidget {

  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carros')),
      body: SingleChildScrollView(
        child: Container(
          
          //app responsivo
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),

          child: Column(
            children: [
              Row(
                children: [
                  WidgetCarro('Audi',' Q8','lib/imagens/audi_q8.jpg'),
                  WidgetCarro('Audi',' R8','lib/imagens/audi_r8.jpg'),
                ],
              ),
              Row(
                children: [
                  WidgetCarro('BMW',' M2','lib/imagens/bmw_m2.jpg'),
                  WidgetCarro('Ferrari',' 488','lib/imagens/ferrari_488.jpg'),
                ],
              ),
              Row(
                children: [
                  WidgetCarro('Lamborghini', ' Huracan','lib/imagens/lamborghini_huracan.jpg'),
                  WidgetCarro('Lamborghini',' Urus','lib/imagens/lamborghini_urus.jpg'),
                ],
              ),
              Row(
                children: [
                  WidgetCarro('Maserati',' GTS','lib/imagens/maserati_gts.jpg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}