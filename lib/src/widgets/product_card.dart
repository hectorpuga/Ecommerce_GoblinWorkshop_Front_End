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

    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: sized.width * 0.5,
        child: //url == null
            //     ? Image(image: AssetImage('assets/no-image.png'), fit: BoxFit.cover)
            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 150,
              child: FadeInImage(
                placeholder: const AssetImage('assets/img/progress.gif'),
                image: NetworkImage(producto.thumbnail),
                fit: BoxFit.contain,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Precio: \$ ${producto.price}',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      producto.title,
                      style: TextStyle(
                        
                          overflow: TextOverflow
                              .ellipsis, // Muestra puntos suspensivos (...) si el texto desborda las tres líneas
                          // Limita el texto a un máximo de tres líneas
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
