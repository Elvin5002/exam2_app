import 'package:bloc/bloc.dart';
import 'package:exam2_app/data/models/product_model.dart';
import 'package:exam2_app/data/services/app_sevice.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._appService) : super(ProductInitial());

  final AppService _appService;

  void getProducts() async{
    try {
      emit(ProductLoading());
      final result = await _appService.getProducts();
      emit(ProductSuccess(products: result));
    } catch(e) {
      emit(ProductFailure(error: 'error'));
    }
  }
}
