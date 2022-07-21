import 'package:app_vendas/pages/cadastros/product_page.dart';
import 'package:app_vendas/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/iconMenuButton.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.monetization_on,size: 30,),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Vendas"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
          icon: const Icon(Icons.logout),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: 9,
          itemBuilder: (context, index) {
            return listMenuIcon(context)[index];
          },
        ),
      ),
    );
  }

  List<IconMenuButton> listMenuIcon(BuildContext context){
    return [
      IconMenuButton(tittle: "Cadastrar clientes",pathImage: "assets/images/customer.png",onTap: (){},),
      IconMenuButton(tittle: "Cadastrar produtos",pathImage: "assets/images/package.png",onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage()));
      }),
      IconMenuButton(tittle: "Cadastrar fornecedores",pathImage: "assets/images/correio.png",onTap: (){}),
      IconMenuButton(tittle: "Vender",pathImage: "assets/images/orcamento.png",onTap: (){}),
      IconMenuButton(tittle: "Relatórios",pathImage: "assets/images/relatorio.png",onTap: (){}),
      IconMenuButton(tittle: "Equipe",pathImage: "assets/images/collaboration.png",onTap: (){}),
      IconMenuButton(tittle: "Agenda",pathImage: "assets/images/calendar.png",onTap: (){}),
      IconMenuButton(tittle: "Sincronizar",pathImage: "assets/images/sincronizacao.png",onTap: (){}),
      IconMenuButton(tittle: "Suporte",pathImage: "assets/images/help.png",onTap: (){}),
    ];
  }
}
