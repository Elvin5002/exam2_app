part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductSuccess extends ProductState {
  ProductSuccess({required this.products});
  final List<ProductModel> products;
}

final class ProductFailure extends ProductState {
  final String error;

  ProductFailure({required this.error});
}
