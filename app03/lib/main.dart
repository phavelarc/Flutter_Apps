import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'App',
      home: TelaPrincipal(),
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
      appBar: AppBar(title: Text('App 03')),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    [
                        Text('A', style: TextStyle(color: Colors.blue)),
                        Text('B'),
                        Text('C'),
                    ],
                ),
              ),

              Icon(
                Icons.directions_bus,
                color: Colors.green,
                size: 80.0
              ),

            ],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),

          Image.network('https://pbs.twimg.com/media/E9Fv3IUXIAAxkYq?format=jpg&name=large')
        ],
      ),
    );
  }
}