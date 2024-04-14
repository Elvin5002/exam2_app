import 'package:exam2_app/presentations/pages/home/widgets/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(FontAwesomeIcons.trash),
          )
        ],
      ),
      body: const CartView()
    );
  }
}

