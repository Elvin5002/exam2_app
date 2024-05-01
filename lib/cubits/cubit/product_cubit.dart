import 'package:bloc/bloc.dart';
import '../../data/models/product_model.dart';
import '../../data/services/app_sevice.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._productService) : super(ProductInitial());

  final ProductService _productService;
  
  List<ProductModel>? products;
  final List<ProductModel> deletedProduct = [];

  void getProducts() async{
    try {
      emit(ProductLoading());
      products = await _productService.getProducts();
      emit(ProductSuccess(products: products ?? []));
    } catch(e) {
      emit(ProductFailure(error: 'error'));
    }
  }

  void removeProduct(int id){
    products!.removeWhere((product){
      if(product.id == id){
        deletedProduct.add(product);
        return true;
      }
      return false;
    });
    emit(ProductSuccess(products: products!));
  }

  void undoProduct(int id){
    deletedProduct.removeWhere((product) {
      if(product.id == id){
        products!.add(product);
        return true;
      }
      return false;
    },);
    emit(ProductSuccess(products: products!));
  }

  void deleteProduct(){
    deletedProduct.clear();
    emit(ProductSuccess(products: products!));
  }
}
