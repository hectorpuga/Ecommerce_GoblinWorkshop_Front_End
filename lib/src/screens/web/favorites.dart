import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../provider/productos.dart';
import '../../widgets/product_card.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final List productFavorites =
        Provider.of<ProductsProvider>(context).getFavorites();
    return GridView.builder(
        itemCount: productFavorites.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (_, i) {
          return ProductCard(
            data: productFavorites[i],
          );
        });
  }
}
