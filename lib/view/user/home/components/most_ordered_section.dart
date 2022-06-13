import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/user/home/components/food_card.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

class MostOrderedSection extends StatelessWidget {
  const MostOrderedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHomeViewModel>(
        init: Get.find<UserHomeViewModel>(),
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Most Ordered',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 320,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => FoodCard(
                          foodModel: controller.foodModelList[index],
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 15.0,
                        ),
                    itemCount: controller.foodModelList.length),
              ),
            ],
          );
        });
  }
}
