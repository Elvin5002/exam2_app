import 'package:exam2_app/cubits/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeletedIcon extends StatelessWidget {
const DeletedIcon({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final cubit = context.read<ProductCubit>();
    return IconButton(
      onPressed: () {
        cubit.deleteProduct();
      },
      icon: const Icon(
        Icons.delete_rounded,
          size: 35,
          color: Colors.black,
      ));
  }
}