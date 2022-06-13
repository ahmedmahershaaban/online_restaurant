import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/user/home/components/food_category.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHomeViewModel>(
        init: Get.find<UserHomeViewModel>(),
        builder: (controller) {
          return SizedBox(
              height: 100,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FoodCategory(
                        counter: controller.fastFoodList.length,
                        title: 'Fast Food',
                        assetLocation: 'asset/images/fastFood.png',
                      ),
                      const SizedBox(width: 15.0),
                      FoodCategory(
                        counter: controller.spinachFoodList.length,
                        title: 'Spanish Food',
                        assetLocation: 'asset/images/spainchFood.jpg',
                      ),
                      const SizedBox(width: 15.0),
                      FoodCategory(
                        counter: controller.firedList.length,
                        title: 'Fired Food',
                        assetLocation: 'asset/images/firedFood.jpg',
                      ),
                      const SizedBox(width: 15.0),
                    ],
                  )));
        });
  }
}
