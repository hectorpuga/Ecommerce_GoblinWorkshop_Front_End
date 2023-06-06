import 'package:flutter/material.dart';

class HomeAppBarApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> keyScaffold;
  const HomeAppBarApp({super.key, required this.keyScaffold});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          // if (!Platform.isAndroid && !Platform.isIOS) {
          //   _controller.setExtended(true);
          // }
          keyScaffold.currentState?.openDrawer();
        },
        icon: const Icon(Icons.menu, color: Colors.black),
      ),
    );
  }
}
