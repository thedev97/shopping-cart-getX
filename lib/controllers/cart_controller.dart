import 'package:get/get.dart';
import 'package:shopping_app_01/models/product_model.dart';

class CartController extends GetxController {
  var cartItems = List<ProductModel>.empty().obs;

  int get totalCartItem => cartItems.length;

  int get totalPrice =>
      cartItems.fold(0, (sum, items) => sum + items.prodPrice!);

  void addCartItem(ProductModel productModel) {
    cartItems.add(productModel);
  }
}
