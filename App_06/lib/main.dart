import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegação',

      //
      // ROTAS
      //
      initialRoute: 't1',
      routes: {
        't1': (context) => Tela1(),
        't2': (context) => Tela2(),
        't3': (context) => Tela3(),
        't4': (context) => Tela4(),
      },
    ),
  );
}

//
// Dados
// 
class Dados{
  final String titulo;
  final String mensagem;
  Dados(this.titulo,this.mensagem);
}



//
// TELA 1
//
class Tela1 extends StatefulWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  _Tela1State createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {

  var titulo = TextEditingController();
  var mensagem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 1'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [

            TextField(
              controller: titulo,
              decoration: InputDecoration(
                labelText: 'Título',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            TextField(
              controller: mensagem,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Mensagem',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            OutlinedButton(
              child: Text('Enviar'),
              onPressed: () {

                  setState(() {

                    var obj = Dados(
                      titulo.text,
                      mensagem.text,    
                    );

                    Navigator.pushNamed(
                      context, 
                      't2',
                      arguments: obj
                    );
                    
                  });

              },
            ),

            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  child: Text('Próxima'),
                  onPressed: () {
                    Navigator.pushNamed(context, 't2');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
// TELA 2
//
class Tela2 extends StatefulWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  _Tela2State createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    
    //
    // RECUPERAR OS DADOS
    //
    final Dados obj = ModalRoute.of(context)!.settings.arguments as Dados;
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('Título'),
            Text(obj.titulo, style: TextStyle(fontSize: 24),),
            SizedBox(
              height: 10,
            ),
            Text('Mensagem'),
            Text(obj.mensagem, style: TextStyle(fontSize: 24),),

            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  child: Text('Anterior'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                OutlinedButton(
                  child: Text('Próxima'),
                  onPressed: () {
                    Navigator.pushNamed(context, 't3');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
// TELA 3
//
class Tela3 extends StatelessWidget {
  const Tela3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 3'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text('Anterior'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            OutlinedButton(
              child: Text('Próxima'),
              onPressed: () {
                Navigator.pushNamed(context, 't4');
              },
            ),
          ],
        ),
      ),
    );
  }
}

//
// TELA 4
//
class Tela4 extends StatelessWidget {
  const Tela4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 4'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text('Anterior'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
