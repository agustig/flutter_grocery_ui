import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:grocery_ui/data/models/product_model.dart';
import 'package:grocery_ui/utils/constants.dart';
import 'package:grocery_ui/utils/exceptions.dart';

abstract class RemoteDataSource {
  Future<List<ProductModel>> getProducts();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await client.get(Uri.parse('$baseUrl/products/'));

    if (response.statusCode == 200) {
      final rawProducts = jsonDecode(response.body) as List;
      final productResults = rawProducts
          .map((productData) => ProductModel.fromJson(productData))
          .toList();
      return productResults;
    } else {
      throw ServerException();
    }
  }
}
