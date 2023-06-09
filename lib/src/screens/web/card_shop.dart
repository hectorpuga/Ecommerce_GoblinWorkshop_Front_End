import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:provider/provider.dart';

import '../../models/result.dart';
import '../../provider/productos.dart';
import '../../widgets/cards_cardshop.dart';

class CardShop extends StatelessWidget {
  const CardShop({super.key});

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;

    final textos = ["Productos", "Envios", "Total"];

    final List<Result> getCarrito =
        Provider.of<ProductsProvider>(context).getCarrito();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: sized.width * 0.61,
            child: ListView.builder(
              itemCount: getCarrito.length,
              itemBuilder: (context, i) {
                return CardsShoping(
                  child: Column(
                    children: [
                      const Text(
                        "Producto",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Divider(),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network(getCarrito[i].thumbnail),
                              Column(
                                children: [
                                  SizedBox(
                                    width: sized.width * 0.25,
                                    height: 40,
                                    child: AutoSizeText(
                                      utf8.decode(
                                          getCarrito[i].title.runes.toList()),
                                      softWrap: true,
                                      style: TextStyle(
                                        fontSize: sized.width * 0.0095,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  SizedBox(
                                    width: sized.width * 0.35,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SizedBox(
                                          width: sized.width * 0.0675,
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.red)),
                                              onPressed: () {},
                                              child: Text("Eliminar")),
                                        ),
                                        SizedBox(
                                            width: sized.width * 0.067,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(
                                                                Colors.green)),
                                                child: Text("Guardar"))),
                                        SizedBox(
                                            width: sized.width * 0.075,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text("Comprar")))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Text(getCarrito[i].price.toString()),
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Envio",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 80,
                            height: 30,
                            child: NumberInputWithIncrementDecrement(
                              decIconSize: 10,
                              incIconSize: 10,
                              controller: TextEditingController(),
                              onIncrement: (v) {
                                print(getCarrito[i].price * v);
                              },
                              onDecrement: (v) {
                                print(getCarrito[i].price * v);
                              },
                              min: 0,
                              max: 100,
                            ),
                          ),
                          const Text(
                            "Gratis",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: sized.height * 0.03),
          width: sized.width * 0.28,
          height: 230,
          decoration: _createCardShape(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Resumen de Compra",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const Divider(
                  color: Colors.white,
                ),
                for (int i = 0; i < textos.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          textos[i],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                Container(
                  margin: EdgeInsets.only(bottom: sized.height * 0.02),
                  width: sized.width * 0.2,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Continuar Compra")),
                )
              ]),
        ),
      ],
    );
  }

  calcular() {}

  BoxDecoration _createCardShape() {
    return BoxDecoration(
        color: const Color(0xFF464667).withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
        ]);
  }
}
