import 'package:flutter/material.dart';

import '../iniciosesion.dart';

class HomeAppBarWeb extends StatelessWidget {
  const HomeAppBarWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;

    return AppBar(
      backgroundColor: Colors.white,
      leading: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Image.asset("assets/img/logo.png"),
        );
      }),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
      title: Row(children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Goblin-Workshop',
              style: const TextStyle(fontSize: 30),
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
            )),
        const SizedBox(
          width: 100,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: sized.width * 0.3,
          height: 37,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(40)),
          child: const Row(children: [
            Icon(Icons.search, color: Colors.black),
            SizedBox(
              width: 30,
            ),
            Text(
              "Search...",
              style: TextStyle(fontSize: 15),
            )
          ]),
        )
      ]),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 30),
            child: IconButton(
                hoverColor: Colors
                    .transparent, // Establecer el color hover a transparente
                splashColor: Colors
                    .transparent, // Establecer el color de la sombra al presionar a transparente
                highlightColor: Colors
                    .transparent, // Establecer el color de resaltado al presionar a transparente

                onPressed: () => _mostrarAlert(context),
                icon: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                  size: 50,
                )))
      ],
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: const InicioSesion(),
          );
        });
  }
}
