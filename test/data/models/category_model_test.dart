import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_ui/data/models/category_model.dart';

import '../../dummy_data/dummy_object.dart';
import '../../json_reader.dart';

void main() {
  const tCategoryModel = testCategoryModel;
  const tCategory = testCategory;

  test('should be a subclass of Category entity', () {
    final result = tCategoryModel.toEntity();
    expect(result, tCategory);
  });

  test('should be a CategoryModel from json data', () {
    // arrange
    final jsonData = json.decode(readJson('dummy_data/category.json'));
    // act
    final result = CategoryModel.fromJson(jsonData);
    // assert
    expect(result, tCategoryModel);
  });
}
