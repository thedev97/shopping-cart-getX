import 'package:get/get.dart';
import '../utils/values/values.dart';
import 'package:flutter/material.dart';
import '../controllers/shop_controller.dart';
import '../controllers/cart_controller.dart';
import '../utils/components/buttons/buttons.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final shoppingController = Get.put(ShopController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'SHOPPING DEMO',
                style: AppTextStyles.header,
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: GetX<ShopController>(builder: (controller) {
                  return ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (ctx, index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${controller.products[index].prodName}',
                                          style: AppTextStyles.normalText,
                                        ),
                                        Text(
                                          '${controller.products[index].prodDescription}',
                                          style: AppTextStyles.normalText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Image.asset(
                                          '${controller.products[index].prodImage}',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '\$${controller.products[index].prodPrice}',
                                      style: AppTextStyles.normalText,
                                    ),
                                  ],
                                ),
                                Button(
                                  title: 'Add to Cart',
                                  onPress: () => cartController
                                      .addCartItem(controller.products[index]),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                }),
              ),
              GetX<CartController>(builder: (controller) {
                return Text(
                  'Total amount: \$${controller.totalPrice}',
                  style: AppTextStyles.titleText,
                );
              }),
            ],
          ),
        ),
      ),
      floatingActionButton: GetX<CartController>(builder: (controller) {
        return FloatingActionButton(
          backgroundColor: Colors.white,
          mini: true,
          isExtended: true,
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_cart,
                  size: 20,
                  color: Colors.black,
                ),
                Text(
                  controller.totalCartItem.toString(),
                  style: AppTextStyles.normalText3,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
