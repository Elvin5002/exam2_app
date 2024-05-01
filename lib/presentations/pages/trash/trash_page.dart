import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../cubits/cubit/product_cubit.dart';
import '../home/widgets/product_grid.dart';
import 'widgets/deleted_icon.dart';

class TrashPage extends StatelessWidget {
  const TrashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Trash Page'),
          actions: const [
            DeletedIcon()
          ],
        ),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if(state is ProductSuccess){
              final products = context.read<ProductCubit>().deletedProduct; 
              return ProductGrid(
                products: products,
                onClick: (id) {context.read<ProductCubit>().undoProduct(id);}, 
                icon: Icons.recycling,
              );
            }
            return const SizedBox.shrink();
          },
        ));
  }
}
