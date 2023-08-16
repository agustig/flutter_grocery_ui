import 'package:equatable/equatable.dart';
import 'package:grocery_ui/domain/entities/category.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;
  final String creationAt;
  final String updatedAt;
  final Category category;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
    required this.category,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        price,
        description,
        images,
        creationAt,
        updatedAt,
        category,
      ];
}
