import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_ui/data/datasources/remote_data_source.dart';
import 'package:grocery_ui/data/models/product_model.dart';
import 'package:grocery_ui/utils/constants.dart';
import 'package:grocery_ui/utils/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';
import '../../json_reader.dart';

void main() {
  late RemoteDataSourceImpl remoteDataSource;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteDataSource = RemoteDataSourceImpl(client: mockHttpClient);
  });

  group('Get list of product', () {
    const productsUrl = '$baseUrl/products/';

    final productsRaw =
        json.decode(readJson('dummy_data/products.json')) as List;
    final productList = List.from(productsRaw)
        .map((product) => ProductModel.fromJson(product))
        .toList();

    test('should return list of Product when the response code is 200',
        () async {
      // arrange
      when(mockHttpClient.get(Uri.parse(productsUrl))).thenAnswer((_) async =>
          http.Response(readJson('dummy_data/products.json'), 200));

      // act
      final result = await remoteDataSource.getProducts();

      // assert
      expect(result, productList);
    });

    test('should throw ServerException when the response code is 404 or other',
        () async {
      // arrange
      when(mockHttpClient.get(Uri.parse(productsUrl)))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      // act
      final result = remoteDataSource.getProducts();

      // assert
      expect(() => result, throwsA(isA<ServerException>()));
    });
  });
}
