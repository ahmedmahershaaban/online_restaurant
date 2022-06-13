import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/model/food_model.dart';
import 'package:online_restaurant/model/order_item_model.dart';
import 'package:online_restaurant/view/core/default_button.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

class FoodCard extends StatefulWidget {
  final FoodModel foodModel;
  const FoodCard({
    Key? key,
    required this.foodModel,
  }) : super(key: key);

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHomeViewModel>(
        init: Get.find<UserHomeViewModel>(),
        builder: (controller) {
          return Container(
            width: 200,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.network(
                    widget.foodModel.image,
                    height: 150,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Text(
                          widget.foodModel.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          widget.foodModel.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (counter > 1) {
                                            counter = counter - 1;
                                          }
                                        });
                                      },
                                      child: const Icon(
                                        Icons.remove,
                                      )),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(counter.toString()),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          counter = counter + 1;
                                        });
                                      },
                                      child: const Icon(
                                        Icons.add,
                                      )),
                                ],
                              ),
                            ),
                            DefaultButton(
                              text: 'Add to card',
                              onPressed: () {
                                int index = -1;
                                for (int i = 0; i < controller.orderList.length; i++) {
                                  if (controller.orderList[i].foodModel.id == widget.foodModel.id) {
                                    index = i;
                                  }
                                }
                                if (index == -1) {
                                  controller.orderList.add(
                                    OrderItemModel(foodModel: widget.foodModel, counter: counter),
                                  );
                                  controller.update();
                                } else {
                                  controller.orderList[index] = controller.orderList[index].copyWith(
                                    counter: controller.orderList[index].counter + counter,
                                  );
                                  controller.update();
                                }
                                setState(() {
                                  counter = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
