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

  //Retornar a tarefa adicionada pelo usuário
  var txtTarefa = TextEditingController();

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

      //
      // Adicionar novas tarefas
      //
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context){

              return AlertDialog(
                title: Text('Adicionar tarefa'),
                content:  TextField(
                  controller: txtTarefa,
                  style: TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                    hintText: 'Informe a tarefa',
                  ),
                ),
                actions: [
                  TextButton(
                    child: Text('OK'),
                    onPressed: (){

                      setState(() {
                        
                        var msg = '';
                        if(txtTarefa.text.isNotEmpty){
                          lista.add(txtTarefa.text);
                          txtTarefa.clear();
                          msg = 'Tarefa adicionada com sucesso.';
                        }else{
                          msg = 'Erro: A descrição da tarefa não foi informada.';
                        }

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(msg),
                            duration: Duration(seconds: 2),
                          ),
                        );
                        Navigator.pop(context);
                      });

                    },
                  ),
                  TextButton(
                    child: Text('Cancelar'),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            }
          );
        },
      ),
    );
  }
}