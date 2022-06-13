import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/model/order_item_model.dart';
import 'package:online_restaurant/view/core/default_button.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({
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
                'Offer of week',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 150,
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                          child: Image.network(
                            controller.foodModelList[0].image,
                            fit: BoxFit.fill,
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.foodModelList[0].title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: index > 4 ? Colors.yellow : Colors.yellowAccent,
                                  )),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${controller.foodModelList[0].price}',
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            DefaultButton(
                                text: 'Add to card',
                                onPressed: () {
                                  int index = -1;
                                  for (int i = 0; i < controller.orderList.length; i++) {
                                    if (controller.orderList[i].foodModel.id == controller.foodModelList[0].id) {
                                      index = i;
                                    }
                                  }
                                  if (index == -1) {
                                    controller.orderList.add(
                                      OrderItemModel(foodModel: controller.foodModelList[0], counter: 1),
                                    );
                                    controller.update();
                                  } else {
                                    controller.orderList[index] = controller.orderList[index].copyWith(
                                      counter: controller.orderList[index].counter + 1,
                                    );
                                    controller.update();
                                  }
                                }),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ],
          );
        });
  }
}
