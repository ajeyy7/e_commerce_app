import 'package:e_commerce_app/view/cart/cart_page.dart';
import 'package:e_commerce_app/view/home_page/home_page.dart';
import 'package:e_commerce_app/view/profile/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex=0;
  List<Widget>page=[
    Home(),
    Cart(),
    Profile()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
          onTap: navigateBottomNav,
          type: BottomNavigationBarType.fixed,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),label: "cart"),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: "Profile"),
      ]),
      body: page[selectedindex],
    );
  }

void  navigateBottomNav(int index) {
    setState(() {
      selectedindex=index;
    });
  }
}
