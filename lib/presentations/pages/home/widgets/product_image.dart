import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key, required this.img}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 150,
          width: 170,
          child: Image.network(img)
        ),
        const Positioned(
          top: 10,
          left: 10,
          child: Icon(FontAwesomeIcons.trash),
        ),
      ]
    );
  }
}
