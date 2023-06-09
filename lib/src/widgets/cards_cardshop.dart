import 'package:flutter/material.dart';

class CardsShoping extends StatelessWidget {
  final Widget child;
  const CardsShoping({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Container(
          padding: const EdgeInsets.all(20),
          width: sized.width * 0.4,
          height: 300,
          decoration: _createCardShape(),
          child: child),
    );
  }

  BoxDecoration _createCardShape() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
        ]);
  }
}
