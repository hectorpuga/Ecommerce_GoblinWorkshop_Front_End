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
      theme: AppTheme.buttonNavigation,
      extendedTheme: const SidebarXTheme(
        width: 200,
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
          label: 'Home',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.search,
          label: 'Search',
        ),
        const SidebarXItem(
          icon: Icons.shopping_cart_outlined,
          label: 'People',
        ),
        const SidebarXItem(
          icon: Icons.person_2_outlined,
          label: 'Favorites',
        ),
        const SidebarXItem(
          icon: Icons.help_outline_sharp,
          label: 'Flutter',
        ),
      ],
    );
  }
}
