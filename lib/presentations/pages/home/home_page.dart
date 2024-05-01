import 'package:exam2_app/presentations/pages/home/widgets/app_bar_icon.dart';
import 'package:exam2_app/presentations/pages/home/widgets/cart_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: const [
          AppBarIcon()
        ],
      ),
      body: const CartView()
    );
  }
}

