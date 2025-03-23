import 'package:riverpod_files/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../utils/app_images.dart';

part 'products_provider.g.dart';

const List<Product> allProducts = [
  Product(id: "1", title: "Groovy Shorts", price: 12, image: AppImages.shorts),
  Product(id: "2", title: "Karati Kit", price: 34, image: AppImages.karati),
  Product(id: "3", title: "Denim Jeans", price: 54, image: AppImages.denim),
  Product(id: "4", title: "Red Backpack", price: 14, image: AppImages.backpack),
  Product(id: "5", title: "Drum & Sticks", price: 29, image: AppImages.drum),
  Product(id: "6", title: "Blue Suitcase", price: 44, image: AppImages.suitcase),
  Product(id: "7", title: "Roller skates", price: 52, image: AppImages.roller),
  Product(id: "8", title: "Electric Guitar", price: 79, image: AppImages.guitar),
];

// generated providers
@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((p) => p.price < 50).toList();
}