import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/user/home/components/category_list.dart';
import 'package:online_restaurant/view/user/home/components/most_ordered_section.dart';
import 'package:online_restaurant/view/user/home/components/offer_section.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHomeViewModel>(
        init: Get.find<UserHomeViewModel>(),
        builder: (controller) {
          return controller.foodModelList.isEmpty
              ? const Center(
                  child: const CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 10.0),
                        CategoryList(),
                        SizedBox(height: 20.0),
                        OfferSection(),
                        SizedBox(height: 20.0),
                        MostOrderedSection(),
                      ],
                    ),
                  ),
                );
        });
  }
}
