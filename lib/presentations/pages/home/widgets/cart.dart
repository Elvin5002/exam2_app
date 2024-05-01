import 'package:exam2_app/data/models/product_model.dart';
import 'package:exam2_app/presentations/pages/home/widgets/product_image.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
const Cart({ super.key, required this.product, this.onClick, required this.icon,});

  final ProductModel product;
  final Function()? onClick;
  final IconData icon;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ProductImage(img: product.image!, onClick: onClick, icon: icon,),
        const SizedBox(height: 10,),
        Column(
        children: [
          Text(product.category??''),
          const SizedBox(height: 5,),
          Text(product.price.toString())
        ],
      )
      ],
    );
  }
}