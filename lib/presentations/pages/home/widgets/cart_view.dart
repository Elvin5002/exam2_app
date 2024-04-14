import 'package:exam2_app/cubits/cubit/product_cubit.dart';
import 'package:exam2_app/presentations/pages/home/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductLoading){
          return const Center(child: CircularProgressIndicator());
        }else if(state is ProductSuccess){
          final product = state.products;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 0.68,
            ),
            itemCount: product.length,
            itemBuilder: (_, int index){
              return Cart(
                product: product[index],
              );
            }
          );
          // Container(
          //   child: Text(product[1].description!),
          // );
        }else{
          return const SizedBox.shrink();
        }
      },
    );
  }
}
