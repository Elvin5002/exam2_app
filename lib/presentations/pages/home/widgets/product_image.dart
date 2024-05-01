import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.img, required this.onClick, required this.icon});

  final String img;
  final Function()? onClick;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 170,
          child: Image.network(img)
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink.shade50
            ),
            child: IconButton(
              onPressed: onClick,
              icon: Icon(icon, size: 25,)
            ),
          ),
        ),
      ]
    );
  }
}
