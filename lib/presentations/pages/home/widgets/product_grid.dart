import 'package:exam2_app/presentations/pages/home/widgets/cart.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/product_model.dart';

class ProductGrid extends StatelessWidget {
const ProductGrid({ super.key, required this.products, required this.onClick, required this.icon });

  final List<ProductModel> products;
  final Function(int id) onClick;
  final IconData icon;

  @override
  Widget build(BuildContext context){
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        childAspectRatio: 0.68,
      ),
      itemCount: products.length,
      itemBuilder: (_, int i){
        final product = products[i];
        return Cart(
          product: product,
          onClick: ()=> onClick(product.id!), icon: icon,
        );
      }
    );
  }
}