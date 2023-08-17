import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:grocery_ui/data/datasources/remote_data_source.dart';
import 'package:grocery_ui/domain/entities/product.dart';
import 'package:grocery_ui/domain/repositories/product_repository.dart';
import 'package:grocery_ui/utils/exceptions.dart';
import 'package:grocery_ui/utils/failure.dart';

class ProductRepositoryImpl implements ProductRepository {
  final RemoteDataSource remoteDataSource;

  ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final result = await remoteDataSource.getProducts();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
