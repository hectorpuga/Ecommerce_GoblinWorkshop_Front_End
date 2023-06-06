import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../widgets/barra_navegacion.dart';

class Home extends StatelessWidget {
  final controller = SidebarXController(selectedIndex: 0, extended: false);
  final _keyScaffold = GlobalKey<ScaffoldState>();

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 900;
    final sized = MediaQuery.of(context).size;

    return Scaffold(
        key: _keyScaffold,
        appBar: isSmallScreen
            ? AppBar(
                backgroundColor: Colors.white,
                title: Text("Hola"),
                leading: IconButton(
                  onPressed: () {
                    // if (!Platform.isAndroid && !Platform.isIOS) {
                    //   _controller.setExtended(true);
                    // }
                    _keyScaffold.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: Colors.black),
                ),
              )
            : AppBar(
                backgroundColor: Colors.white,
                leading: Builder(builder: (context) {
                  return Container(color: Colors.cyanAccent.shade200);
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
                        style: TextStyle(fontSize: 30),
                        textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      )),
                  const SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: sized.width * 0.3,
                    height: 35,
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
                        onPressed: () {},
                        icon: const Icon(
                          Icons.account_circle_outlined,
                          color: Colors.black,
                          size: 50,
                        )),
                  )
                ],
              ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 900) {
            // Si el ancho máximo es menor a 600, se muestra un mensaje de tamaño mínimo
            return Center(
                child: Text(
              "Hola mundo",
              style: TextStyle(color: Colors.black),
            ));
          } else {
            // Si el ancho máximo es igual o mayor a 600, se muestra el contenido normal
            return Row(children: [
              if (!isSmallScreen) BarraDeNavegacion(controller: controller),
            ]);
          }
        }));
  }
}
