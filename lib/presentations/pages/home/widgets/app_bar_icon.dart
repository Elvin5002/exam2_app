import 'package:exam2_app/cubits/cubit/product_cubit.dart';
import 'package:exam2_app/presentations/pages/trash/trash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return Stack(
      alignment: Alignment.topRight,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: cubit,
                    child: const TrashPage(),
                  ),
                ));
            },
            icon: const Icon(
              Icons.delete_rounded,
              size: 35,
              color: Colors.black,
            )),
        Positioned(
          right: 6,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: BlocBuilder<ProductCubit, ProductState>(
                builder: (context, state) {
                  return Text(
                    state is ProductSuccess ?
                      context.read<ProductCubit>().deletedProduct.length.toString() : '0',
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
