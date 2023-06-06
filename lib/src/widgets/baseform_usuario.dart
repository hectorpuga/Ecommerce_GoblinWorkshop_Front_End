import 'package:flutter/material.dart';

class BaseUsuario extends StatelessWidget {
  final Widget formulario;
  const BaseUsuario({super.key, required this.formulario});

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;
    return SizedBox(
      width: sized.width * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), color: Colors.red),
              child: IconButton(
                  iconSize: 5,
                  hoverColor: Colors
                      .transparent, // Establecer el color hover a transparente
                  splashColor: Colors
                      .transparent, // Establecer el color de la sombra al presionar a transparente
                  highlightColor: Colors.transparent, // Est
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.close,
                    size: 15,
                  )),
            )
          ]),
          const Text(
            "Bienvenido!",
            style: TextStyle(color: Colors.black),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(), borderRadius: BorderRadius.circular(100)),
          ),
          formulario
        ],
      ),
    );
  }
}
