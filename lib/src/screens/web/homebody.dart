import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../services/products_mercadolibre.dart';
import '../../widgets/barra_navegacion.dart';
import '../../widgets/product_card.dart';

class HomeBodyWeb extends StatelessWidget {
  final SidebarXController controller;

  const HomeBodyWeb({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductosMercadoLibre>(context);
    final sized = MediaQuery.of(context).size;
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      BarraDeNavegacion(controller: controller),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 50, top: 50),
                    height: sized.height * 0.35,
                    width: sized.width * 0.8,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          products.productos[index].thumbnail,
                          fit: BoxFit.scaleDown,
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
                height: sized.height * 0.11 * products.productos.length,
                child: GridView.builder(
                    itemCount: products.productos.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
      )
    ]);
  }
}
