import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../widgets/barra_navegacion.dart';

class HomeBodyWeb extends StatelessWidget {
  final SidebarXController controller;

  const HomeBodyWeb({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
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
                    margin: EdgeInsets.only(bottom: 50, top: 50),
                    height: sized.height * 0.35,
                    width: sized.width * 0.8,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          "https://via.placeholder.com/350x150",
                          fit: BoxFit.fill,
                        );
                      },
                      itemCount: 3,
                      pagination: const SwiperPagination(),
                      control: const SwiperControl(),
                    ),
                  ),
                ],
              ),
              for (int i = 0; i < 10; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 4; i++)
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: sized.width * 0.007,
                            vertical: sized.height * 0.007),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(14)),
                        width: sized.width * 0.19,
                        height: sized.height * 0.35,
                      )
                  ],
                )
            ],
          ),
        ),
      )
    ]);
  }
}
