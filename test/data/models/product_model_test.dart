import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_ui/data/models/product_model.dart';

import '../../dummy_data/dummy_object.dart';
import '../../json_reader.dart';

void main() {
  const tProductModel = testProductModel;
  const tProduct = testProduct;

  test('should be a subclass of Product entity', () {
    final result = tProductModel.toEntity();
    expect(result, tProduct);
  });

  test('should be a ProductModel from json data', () {
    // arrange
    final jsonData = json.decode(readJson('dummy_data/product.json'));
    // act
    final result = ProductModel.fromJson(jsonData);
    // assert
    expect(result, tProductModel);
  });
}
