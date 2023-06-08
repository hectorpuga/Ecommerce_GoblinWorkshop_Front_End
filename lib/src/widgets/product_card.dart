import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../models/result.dart';

class ProductCard extends StatelessWidget {
  final Result data;
  const ProductCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackgroundImage(data),
          ],
        ),
      ),
    );
  }

  BoxDecoration _cardBorders() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, offset: Offset(0, 7), blurRadius: 10)
          ]);
}

class _BackgroundImage extends StatelessWidget {
  final Result producto;

  const _BackgroundImage(this.producto);

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;

    var row = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Precio: \$ ${producto.price}',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: sized.width * 0.20,
              height: 40,
              child: AutoSizeText(
                utf8.decode(producto.title.runes.toList()),
                softWrap: true,
                style: TextStyle(
                  fontSize: sized.width * 0.003,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ],
    );
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        child: //url == null
            //     ? Image(image: AssetImage('assets/no-image.png'), fit: BoxFit.cover)
            SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconButton(
                    hoverColor: Colors
                        .transparent, // Establecer el color hover a transparente
                    splashColor: Colors
                        .transparent, // Establecer el color de la sombra al presionar a transparente
                    highlightColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF464667).withOpacity(0.7),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15))),
                  child: IconButton(
                      hoverColor: Colors
                          .transparent, // Establecer el color hover a transparente
                      splashColor: Colors
                          .transparent, // Establecer el color de la sombra al presionar a transparente
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      )),
                )
              ]),
              SizedBox(
                width: 150,
                child: FadeInImage(
                  placeholder: const AssetImage('assets/img/progress.gif'),
                  image: NetworkImage(producto.thumbnail),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF464667).withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15)),
                  child: row)
            ],
          ),
        ),
      ),
    );
  }
}
