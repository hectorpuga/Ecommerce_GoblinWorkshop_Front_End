import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class AppTheme {
  static final buttonNavigation = SidebarXTheme(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: canvasColor,
      borderRadius: BorderRadius.circular(20),
    ),
    hoverColor: scaffoldBackgroundColor,
    textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
    selectedTextStyle: const TextStyle(color: Colors.white),
    itemTextPadding: const EdgeInsets.only(left: 30),
    selectedItemTextPadding: const EdgeInsets.only(left: 30),
    itemDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: canvasColor),
    ),
    selectedItemDecoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: actionColor.withOpacity(0.37),
      ),
      gradient: const LinearGradient(
        colors: [accentCanvasColor, canvasColor],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.28),
          blurRadius: 30,
        )
      ],
    ),
    iconTheme: IconThemeData(
      color: Colors.white.withOpacity(0.7),
      size: 20,
    ),
    selectedIconTheme: const IconThemeData(
      color: Colors.white,
      size: 20,
    ),
  );

  static const Color primary = Color(0xFF685BFF);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: 46,
        fontWeight: FontWeight.w800,
      ),
    ),
    primaryColor: primary,
    iconTheme: const IconThemeData(
      size: 35,
    ),

    // textTheme: const TextTheme(
    //   // subtitle1: TextStyle(color: Color.fromARGB(255, 90, 78, 60)),
    //   // bodyText2: TextStyle(color: Color.fromARGB(255, 90, 78, 60)),
    //   // headline6: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    //   // headline1: TextStyle(
    //   //   color: Color.fromARGB(255, 90, 78, 60),
    //   //   fontFamily: 'Poppins-Regular',
    //   //   fontWeight: FontWeight.bold,
    //   //   fontSize: 32.0,
    //   // ),
    // ),
    // dividerTheme:
    //     const DividerThemeData(color: Colors.black, endIndent: 0, indent: 0),

    // // Tema para Card
    // cardTheme: const CardTheme(color: Color(0xffC4D428)),
    // scaffoldBackgroundColor: const Color(0xffE9EBBF),
    // // Color primario
    // primaryColor: Colors.indigo,
    // // AppBar Theme
    // appBarTheme: const AppBarTheme(color: primary, elevation: 0),

    // // FloatingActionButtons
    // floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //     backgroundColor: primary, elevation: 5),
    // //TextFormInput

    // inputDecorationTheme: const InputDecorationTheme(
    //     prefixIconColor: Color.fromARGB(255, 56, 56, 56),
    //     hintStyle: TextStyle(
    //         fontFamily: 'Poppins',
    //         fontSize: 16.0,
    //         color: Color.fromRGBO(90, 78, 60, 100))),
    // // ElevatedButtons
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //       foregroundColor: const Color.fromARGB(255, 56, 56, 56),
    //       backgroundColor: const Color.fromARGB(241, 241, 241, 241),
    //       shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(8.0)),
    //       elevation: 10.0,
    //       minimumSize: const Size(240, 59),
    //       textStyle: const TextStyle(
    //         fontFamily: 'Poppins',
    //         fontSize: 16.0,
    //       )),
    // ),

    // //TextButton
    // textButtonTheme: TextButtonThemeData(
    //     style: TextButton.styleFrom(
    //         foregroundColor: const Color.fromARGB(255, 90, 78, 60),
    //         textStyle: const TextStyle(
    //           fontFamily: 'Poppins',
    //           fontSize: 14.0,
    //         )))
  );
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
