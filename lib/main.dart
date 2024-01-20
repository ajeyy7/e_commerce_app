import 'package:e_commerce_app/view/home_page/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
   home: BottomNav(),
    );
  }
}
