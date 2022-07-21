import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final Map product;
  final String? pathImage;

  const CardProduct({Key? key, required this.product, this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height:90,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:  DecorationImage(
                  //image: pathImage != null ? AssetImage(pathImage!) : AssetImage("assets/images/camiseta.jpg"),
                  image: product["src"] != null ? NetworkImage(product["src"]) : NetworkImage('https://www.strokejoinville.com.br/wp-content/uploads/sites/804/2017/05/produto-sem-imagem-1-300x300.gif'),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Text(product["id"].toString(),
                                style: const TextStyle(
                                    fontSize: 15, color: Colors.grey),
                                maxLines: 1),
                          ),
                          Text(product["descricao"],
                              style: const TextStyle(fontSize: 13), maxLines: 1),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Estoque: ${product["estoque"].toString()}",
                          style: const TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            "R\$ ${product["preco"].toString()}",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column()
          ],
        ));
  }
}
