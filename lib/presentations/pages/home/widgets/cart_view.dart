import '../../../../cubits/cubit/product_cubit.dart';
import 'product_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        /*if (state is ProductSuccess){
          return showSna
        };*/
        
      },
      builder: (context, state) {
        return BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductSuccess) {
              final products = state.products;
              return ProductGrid(
                products: products,
                onClick: (id) => context.read<ProductCubit>().removeProduct(id),
                icon: Icons.delete_rounded,
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        );
      },
    );
  }
}
