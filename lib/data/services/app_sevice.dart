import '../../utilities/constants/endpoints.dart';
import '../../utilities/network/dio/dio_client.dart';
import '../models/product_model.dart';

abstract class ProductContract {
  Future<List<ProductModel>> getProducts();
  //Future<ProductModel> getProduct(int id);
}

class ProductService implements ProductContract {
  //Dio dio = Dio();
  @override
  Future<List<ProductModel>> getProducts() async {
    const endpoint = Endpoints.url;
    final response = await dio.get(endpoint);
    final List data = response.data;

    if (response.statusCode == 200) {
      return data.map((e) => ProductModel.fromJson(e)).toList(); 
    }
    throw Exception();
  }
  
}