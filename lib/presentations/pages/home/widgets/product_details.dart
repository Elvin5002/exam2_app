import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
const ProductDetails({ Key? key, required this.desc, required this.price }) : super(key: key);

  final String desc;
  final String price;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Text(desc),
        const SizedBox(height: 5,),
        Text(price)
      ],
    );
  }
}