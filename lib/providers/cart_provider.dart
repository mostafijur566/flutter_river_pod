import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_files/models/product.dart';

import '../utils/app_images.dart';

class CartNotifier extends Notifier<Set<Product>> {
  // initial value
  @override
  Set<Product>build() {
    return {
      const Product(id: "4", title: "Red Backpack", price: 14, image: AppImages.backpack),
    };
  }

  // Methods to update state
  void addProduct(Product product) {
    if(!state.contains(product)) {
      state = {...state, product};
    }
  }

  void removeProduct(Product product) {
    if(state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>((){
  return CartNotifier();
});