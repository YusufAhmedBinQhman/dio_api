import 'package:dio/dio.dart';
import 'package:dio_api/core/models/products.dart';

class ProductsVM {
  Future<List<Product>?> getProducts() async {
    Dio d = Dio();
   // Response<List<Map<String, dynamic>>>
    Response res =
        await d.get("https://fakestoreapi.com/products");
   
    List<Product>? allProducts =
        res.data?.map<Product>((e) => Product.fromJson(e)).toList();
    return allProducts;
  }
}
