import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      home: TelaPrincipal(),
    )
  );
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texto'),
        actions: <Widget>[
          Icon(
            Icons.home,
            color: Colors.black,
            size: 40.0,
          ),
        ],
      ),
      body: Column(
        
        children: [
          Row(
            children: [
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    'A',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 200.0,
                height: 100.0,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'B',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        Container(
          width: 400.0,
          height: 440.0,
          color: Colors.green,
          child: Center(
            child: Text(
              'C',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.orange,
              child: Center(
                child: Text(
                  'D',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 200.0,
              height: 100.0,
              color: Colors.purple,
              child: Center(
                child: Text(
                  'E',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
}