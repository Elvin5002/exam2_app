import 'package:exam2_app/data/models/product_model.dart';
import 'package:exam2_app/presentations/pages/home/widgets/product_details.dart';
import 'package:exam2_app/presentations/pages/home/widgets/product_image.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
const Cart({ Key? key, required this.product,}) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ProductImage(img: product.image!),
        const SizedBox(height: 10,),
        Column(
        children: [
          //Text(product.description!),
          const SizedBox(height: 5,),
          Text(product.price.toString())
        ],
      )
      ],
    );
  }
}