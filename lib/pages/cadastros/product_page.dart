import 'package:flutter/material.dart';

import '../../widgets/card_product.dart';
import '../../widgets/text_form_field.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);

  List<Map> products = [
    {"id": 01,"descricao":"Camiseta Oakley Wild Future Oversized Preta","preco": 29.90,"estoque":34,"src":"https://a3.vnda.com.br/950x/bolovo/2020/11/03/13_11_1_147_online_0021_bolovolate2020164261.jpg?v=1605109743"},
    {"id": 02,"descricao":"Shorts","preco": 49.90,"estoque":65,"src":"https://decathlonpro.vteximg.com.br/arquivos/ids/2594650/tsh-100-black-xl-g1.jpg?v=637401189376930000"},
    {"id": 03,"descricao":"Bermuda","preco": 24.90,"estoque":54,"src":"https://www.monteleste.com.br/static/49591/sku/bermudas-bermuda-d-agua-monte-leste-areia--p-1631907084874.jpg"},
    {"id": 04,"descricao":"Jaqueta","preco": 80.90,"estoque":43,"src":"https://static.netshoes.com.br/produtos/moletom-las-vegas-raiders-nike-prime-logo-masculino/10/2IC-3012-010/2IC-3012-010_zoom1.jpg?ts=1632145117&"},
    {"id": 05,"descricao":"Tenis Nike","preco": 250.00,"estoque":25,"src":"https://images.lojanike.com.br/1024x1024/produto/tenis-nike-zoomx-streakfly-unissex-DJ6566-100-1-11655166280.jpg"},
    {"id": 06,"descricao":"Moletom","preco": 100.00,"estoque":10,"src":"https://static.dafiti.com.br/p/MooBoo-Moletom-Algod%C3%A3o-Moleton-Casaco-Fechado-Liso-Masculino-e-Feminino-Unissex-Blusa-de-Frio-Mooboo-Canguru-Rosa-2622-5472758-1-zoom.jpg"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Produtos"),
      ),
      body: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFieldEdit(
                label: "Pesquisar",
                isPassword: false,
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Colors.grey[300],
                ),
                itemCount: 5,
                itemBuilder: (context,index) {
                  return CardProduct(product: products[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
