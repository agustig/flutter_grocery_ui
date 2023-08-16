import 'package:equatable/equatable.dart';
import 'package:grocery_ui/domain/entities/category.dart';

class CategoryModel extends Equatable {
  final int id;
  final String name;
  final String image;
  final String creationAt;
  final String updatedAt;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      creationAt: json['creationAt'],
      updatedAt: json['updatedAt'],
    );
  }

  Category toEntity() {
    return Category(
      id: id,
      name: name,
      image: image,
      creationAt: creationAt,
      updatedAt: updatedAt,
    );
  }

  @override
  List<Object?> get props => [id, name, image, creationAt, updatedAt];
}
