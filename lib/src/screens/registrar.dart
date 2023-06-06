import 'package:flutter/material.dart';

import '../widgets/baseform_usuario.dart';
import 'iniciosesion.dart';

class Registrar extends StatelessWidget {
  const Registrar({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseUsuario(
      formulario: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Correo"),
          TextFormField(),
          const SizedBox(height: 20),
          const Text("Contraseña"),
          TextFormField(),
          const SizedBox(height: 20),
          const Text("Repita su contraseña"),
          TextFormField(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Cancelar")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _mostrarAlert(context);
                  },
                  child: const Text("Enviar"))
            ],
          )
        ],
      )),
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
