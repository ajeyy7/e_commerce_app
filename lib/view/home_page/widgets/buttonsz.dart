import 'package:flutter/material.dart';

class Buttonz extends StatelessWidget {
  const Buttonz({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 80,
      decoration: const BoxDecoration(
        color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Center(child: Text("Add to cart")),
    );
  }
}
