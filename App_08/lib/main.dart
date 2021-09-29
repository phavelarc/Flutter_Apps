import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarefas',
      home: PrincipalPage(),
    ),
  );
}

//
// PrincipalPage
//
class PrincipalPage extends StatefulWidget {
  const PrincipalPage({ Key? key }) : super(key: key);

  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  //Lista dinâmica para armazenamento das tarefas
  var lista = [];

  @override
  void initState(){
    lista.add("Ir ao supermercado");
    lista.add("Comprar ração para o cachorro");
    lista.add("Trocar a lâmpada da cozinha");
    lista.add("Pagar a conta de internet");
    lista.add("Comprar um ventilador novo");
    lista.add("Abastecer o veículo");
    lista.add("Cortar o cabelo");
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      
      body: Container(
        padding: EdgeInsets.all(30),

        //
        // ListView
        //
        child: ListView.builder(
          //Quantidade de elementos da lista
          itemCount: lista.length,

          //alterar a orientação (vertical/horizontal)
          //scrollDirection: Axis.horizontal,

          //Definir a aparência dos elementos
          itemBuilder: (context, index){
            return Card(
              color: Colors.grey.shade100,
              shadowColor: Colors.blue,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(


                leading: Icon(Icons.arrow_right),
                title: Text(
                  lista[index], 
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE TESTE '),
                trailing: IconButton(
                  icon: Icon(Icons.delete_outline),
                  onPressed: (){
                    
                    //Remover um item da lista
                    setState(() {
                      lista.removeAt(index);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Tarefa removida com sucesso'),
                        duration: Duration(seconds: 2),
                      ));
                    });
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}