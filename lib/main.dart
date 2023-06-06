import 'package:ecommerce/src/screens/home.dart';
import 'package:ecommerce/src/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ecommerce',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: Home());
  }
}

// class _ScreensExample extends StatelessWidget {
//   const _ScreensExample({
//     Key? key,
//     required this.controller,
//   }) : super(key: key);

//   final SidebarXController controller;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return AnimatedBuilder(
//       animation: controller,
//       builder: (context, child) {
//         // final pageTitle = _getTitleByIndex(controller.selectedIndex);
//         switch (controller.selectedIndex) {
//           case 0:
//             return ListView.builder(
//               padding: const EdgeInsets.only(top: 10),
//               itemBuilder: (context, index) => Container(
//                 height: 100,
//                 width: double.infinity,
//                 margin: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Theme.of(context).canvasColor,
//                   boxShadow: const [BoxShadow()],
//                 ),
//               ),
//             );
//           default:
//             return Text(
//               pageTitle,
//               style: theme.textTheme.headlineSmall,
//             );
//         }
//       },
//     );
//   }
// }

// String _getTitleByIndex(int index) {
//   switch (index) {
//     case 0:
//       return 'Home';
//     case 1:
//       return 'Search';
//     case 2:
//       return 'People';
//     case 3:
//       return 'Favorites';
//     case 4:
//       return 'Custom iconWidget';
//     case 5:
//       return 'Profile';
//     case 6:
//       return 'Settings';
//     default:
//       return 'Not found page';
//   }
// }

