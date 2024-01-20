import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/view/home_page/widgets/buttonsz.dart';
import 'package:flutter/material.dart';

import '../../../model/product_model.dart';
class ProductTile extends StatelessWidget {
  final Products product;

  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            children:[ Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                //color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: CachedNetworkImage(
                imageUrl: product.image!,
                fit: BoxFit.contain,
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                    child: Icon(Icons.favorite,color: Colors.red,)),
              ),
      ]
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                product.title!,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Buttonz(),
                  Text(
                    "\$${product.price!}",
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
