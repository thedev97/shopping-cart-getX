import 'package:get/get.dart';
import '../utils/values/values.dart';
import '../models/product_model.dart';

class ShopController extends GetxController {
  var products = List<ProductModel>.empty().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProductList();
  }

  void fetchProductList() async {
    await Future.delayed(const Duration(seconds: 1));
    var productResult = [
      ProductModel(
          prodID: 0,
          prodName: 'Protein Powder',
          prodDescription: 'Some description about this product',
          prodImage: AppImages.protein,
          prodPrice: 401),
      ProductModel(
          prodID: 1,
          prodName: 'Sofa',
          prodDescription: 'Some description about this product',
          prodImage: AppImages.sofa,
          prodPrice: 4000),
      ProductModel(
          prodID: 2,
          prodName: 'T-Shirt',
          prodDescription: 'Some description about this product',
          prodImage: AppImages.shirt,
          prodPrice: 850),
      ProductModel(
          prodID: 3,
          prodName: 'JBL-HeadPhone',
          prodDescription: 'Some description about this product',
          prodImage: AppImages.headphone,
          prodPrice: 2050),
    ];
    products.value = productResult;
  }
}
