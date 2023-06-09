import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../services/products_mercadolibre.dart';
import '../../widgets/barra_navegacion.dart';
import '../../widgets/product_card.dart';
import 'card_shop.dart';
import 'favorites.dart';

class HomeWeb extends StatelessWidget {
  final SidebarXController controller;

  const HomeWeb({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductosMercadoLibre>(context);

    final sized = MediaQuery.of(context).size;
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            BarraDeNavegacion(controller: controller),
            if (controller.selectedIndex == 0)
              HomeBody(sized: sized, products: products),
            if (controller.selectedIndex == 1)
              Expanded(
                child: SizedBox(
                    width: sized.width,
                    height: sized.height * 0.12 * products.productos.length,
                    child: const Favorites()),
              ),
            if (controller.selectedIndex == 2) const CardShop()
          ]);
        });
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.sized,
    required this.products,
  });

  final Size sized;
  final ProductosMercadoLibre products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 50, top: 80),
                  height: sized.height * 0.45,
                  width: sized.width * 0.8,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        "assets/img/promo-navidad-miniat.png",
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: products.productos.length,
                    pagination: const SwiperPagination(),
                    control: const SwiperControl(),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: sized.width,
              height: sized.height * 0.12 * products.productos.length,
              child: GridView.builder(
                  itemCount: products.productos.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (_, i) {
                    return ProductCard(
                      data: products.productos[i],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
