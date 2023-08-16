import 'package:grocery_ui/data/models/category_model.dart';
import 'package:grocery_ui/data/models/product_model.dart';
import 'package:grocery_ui/domain/entities/category.dart';
import 'package:grocery_ui/domain/entities/product.dart';

const testCategory = Category(
  id: 1,
  name: "Clothes",
  image: "https://picsum.photos/640/640?r=6374",
  creationAt: "2023-08-13T17:29:07.000Z",
  updatedAt: "2023-08-13T17:29:07.000Z",
);

const testCategoryModel = CategoryModel(
  id: 1,
  name: "Clothes",
  image: "https://picsum.photos/640/640?r=6374",
  creationAt: "2023-08-13T17:29:07.000Z",
  updatedAt: "2023-08-13T17:29:07.000Z",
);

const testProduct = Product(
  id: 225,
  title: "Slim Fit Long Sleeve Cotton Shirt",
  price: 274,
  description: "description",
  images: ["https://dfcdn.defacto.com.tr/7/R1680AZ_23SP_TR157_01_02.jpg"],
  creationAt: "2023-08-13T17:43:05.000Z",
  updatedAt: "2023-08-13T23:22:21.000Z",
  category: testCategory,
);

const testProductModel = ProductModel(
  id: 225,
  title: "Slim Fit Long Sleeve Cotton Shirt",
  price: 274,
  description: "description",
  images: ["https://dfcdn.defacto.com.tr/7/R1680AZ_23SP_TR157_01_02.jpg"],
  creationAt: "2023-08-13T17:43:05.000Z",
  updatedAt: "2023-08-13T23:22:21.000Z",
  category: testCategoryModel,
);

const testCategories = [testCategory];
const testCategoryModels = [testCategoryModel];
const testProducts = [testProduct];
const testProductModels = [testCategoryModel];
