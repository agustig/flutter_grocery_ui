import 'package:dartz/dartz.dart';
import 'package:grocery_ui/domain/entities/product.dart';
import 'package:grocery_ui/utils/failure.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
