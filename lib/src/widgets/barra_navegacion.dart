import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

import '../theme.dart';

class BarraDeNavegacion extends StatelessWidget {
  const BarraDeNavegacion({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;

    return SidebarX(
      controller: _controller,
      theme: TemaAplication.buttonNavigation,
      extendedTheme: const SidebarXTheme(
        width: 140,
        decoration: BoxDecoration(
          color: canvasColor,
        ),
      ),
      footerDivider: divider,
      headerDivider: SizedBox(
        height: sized.height * 0.1,
      ),
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Inicio',
          onTap: () {
            debugPrint('Home');
          },
        ),
        SidebarXItem(
            icon: Icons.favorite,
            label: 'favoritos',
            onTap: () {
              _controller.selectIndex(2);

              print(_controller.selectedIndex);
            }),
        const SidebarXItem(
          icon: Icons.shopping_cart_outlined,
          label: 'Compras',
        ),
        const SidebarXItem(
          icon: Icons.person_2_outlined,
          label: 'Usuario',
        ),
        const SidebarXItem(
          icon: Icons.help_outline_sharp,
          label: 'Ayuda',
        ),
      ],
    );
  }
}
