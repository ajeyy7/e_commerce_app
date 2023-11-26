import 'package:e_commerce_app/view/home_page/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controlller/product_controller.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SizedBox(
        child: Obx(() {
          if (productController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(itemCount: productController.productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2), itemBuilder: (context,index){
                  return ProductTile(productController.productList[index]);
                });
          }
        }),
      ),
    );
  }
}
