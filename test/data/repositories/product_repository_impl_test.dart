import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grocery_ui/data/repositories/product_repository_impl.dart';
import 'package:grocery_ui/utils/exceptions.dart';
import 'package:grocery_ui/utils/failure.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late ProductRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    repository = ProductRepositoryImpl(remoteDataSource: mockRemoteDataSource);
  });

  const tProductModelList = testProductModels;
  const tProductList = testProducts;

  group('Get Products', () {
    test('should return product list when getProduct is successful', () async {
      // arrange
      when(mockRemoteDataSource.getProducts())
          .thenAnswer((_) async => tProductModelList);

      // act
      final result = await repository.getProducts();

      // assert
      final resultList = result.getOrElse(() => []);
      expect(resultList, tProductList);
    });

    test(
        'should return server failure when the call to remote data source is unsuccessful',
        () async {
      // arrange
      when(mockRemoteDataSource.getProducts()).thenThrow(ServerException());
      // act
      final result = await repository.getProducts();
      // assert
      verify(mockRemoteDataSource.getProducts());
      expect(result, equals(const Left(ServerFailure(''))));
    });

    test(
        'should return connection failure when the device is not connected to internet',
        () async {
      // arrange
      when(mockRemoteDataSource.getProducts()).thenThrow(
        const SocketException('Failed to connect to the network'),
      );
      // act
      final result = await repository.getProducts();
      // assert
      verify(mockRemoteDataSource.getProducts());
      expect(
        result,
        equals(
          const Left(ConnectionFailure('Failed to connect to the network')),
        ),
      );
    });
  });
}
