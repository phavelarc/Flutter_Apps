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
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 40.0,
            ),
          ),
        ],
      ),
      body: Column(
        
        children: [
          Row(
            children: [
              Container(
                margin: new EdgeInsets.only(left: 10.0, top: 10.0),
                width: (MediaQuery.of(context).size.width - 20.0) / 2,
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
                margin: new EdgeInsets.only(right: 10.0, top: 10.0),
                width: (MediaQuery.of(context).size.width - 20.0) / 2,
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
          width: MediaQuery.of(context).size.width - 20.0,
          //-200(Dois Container), -20(10 margem: top e bot), -56(appBar)
          height: MediaQuery.of(context).size.height -276,
          color: Colors.green,
          margin: new EdgeInsets.symmetric(horizontal: 10.0),
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
              margin: new EdgeInsets.only(left: 10.0, bottom: 10.0),
              width: (MediaQuery.of(context).size.width - 20.0) / 2,
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
              margin: new EdgeInsets.only(right: 10.0, bottom: 10.0),
              width: (MediaQuery.of(context).size.width - 20.0) / 2,
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