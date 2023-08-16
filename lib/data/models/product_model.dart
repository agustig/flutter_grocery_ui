import 'package:equatable/equatable.dart';
import 'package:grocery_ui/data/models/category_model.dart';
import 'package:grocery_ui/domain/entities/product.dart';

class ProductModel extends Equatable {
  final int id;
  final String title;
  final int price;
  final String description;
  final List<String> images;
  final String creationAt;
  final String updatedAt;
  final CategoryModel category;

  const ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.creationAt,
    required this.updatedAt,
    required this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      images: List<String>.from(json['images']),
      creationAt: json['creationAt'],
      updatedAt: json['updatedAt'],
      category: CategoryModel.fromJson(json['category']),
    );
  }

  Product toEntity() {
    return Product(
      id: id,
      title: title,
      price: price,
      description: description,
      images: images,
      creationAt: creationAt,
      updatedAt: updatedAt,
      category: category.toEntity(),
    );
  }

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
