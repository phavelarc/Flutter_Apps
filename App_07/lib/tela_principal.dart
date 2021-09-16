import 'package:flutter/material.dart';

import 'tela_configuracoes.dart';
import 'tela_home.dart';
import 'tela_notificacoes.dart';
import 'tela_pesquisar.dart';

//
// TELA PRINCIPAL
//

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  //Índice da págona que será carregada inicialmente
  var telaAtual = 0;

  //Controlador utilizado para troca de telas (páginas)
  var pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //
      // BODY
      //
      body: PageView(
        controller: pageController,
        children: [
          TelaHome(),                           // currentIndex = 0
          TelaPesquisar(),                      // currentIndex = 1
          TelaNotificacoes(),                   // currentIndex = 2
          TelaConfiguracoes(),                  // currentIndex = 3
        ],
        onPageChanged: (index){

          setState(() {
            telaAtual = index;
          });

        },
      ),

      //
      // BARRA DE NAVEGAÇÃO
      //
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue.shade900,

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.40),

        selectedFontSize: 16,
        unselectedFontSize: 16,

        iconSize: 40,

        //Index do Botão Selecionado
        currentIndex: telaAtual,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],

        //  Mudança de Tela (página)
        onTap: (index){
          setState(() {
            telaAtual = index;
          });

          pageController.animateToPage(
            index, 
            duration: Duration(milliseconds: 200), 
            curve: Curves.easeIn,
          );
        },
      ),

    );
  }
}