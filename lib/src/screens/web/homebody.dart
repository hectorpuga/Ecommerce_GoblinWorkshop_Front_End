import 'package:flutter/cupertino.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../widgets/barra_navegacion.dart';

class HomeBodyWeb extends StatelessWidget {
  final SidebarXController controller;

  const HomeBodyWeb({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      BarraDeNavegacion(controller: controller),
    ]);
  }
}
