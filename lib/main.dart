import 'package:exam2_app/cubits/cubit/product_cubit.dart';
import 'package:exam2_app/data/services/app_sevice.dart';
import 'package:exam2_app/presentations/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        lazy: true,
        create: (context) => ProductCubit(AppService())..getProducts(),
        child: const HomePage(),
      )
      
    );
  }
}
