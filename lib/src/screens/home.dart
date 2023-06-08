import 'package:ecommerce/src/screens/web/homeappbar.dart';
import 'package:ecommerce/src/screens/web/homebody.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import 'app/homeappbar.dart';
import 'app/homebody.dart';

class Home extends StatelessWidget {
  final controller = SidebarXController(selectedIndex: 0, extended: false);
  final _keyScaffold = GlobalKey<ScaffoldState>();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 900;

    return Scaffold(
        drawer: Drawer(),
        key: _keyScaffold,
        appBar: isSmallScreen
            ? PreferredSize(
                preferredSize: const Size(300, 100),
                child: HomeAppBarApp(keyScaffold: _keyScaffold))
            : const PreferredSize(
                preferredSize: Size(300, 65), child: HomeAppBarWeb()),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 900) {
            // Si el ancho máximo es menor a 600, se muestra un mensaje de tamaño mínimo
            return const HomeBodyApp();
          } else {
            // Si el ancho máximo es igual o mayor a 600, se muestra el contenido normal
            return HomeBodyWeb(controller: controller);
          }
        }));
  }
}
