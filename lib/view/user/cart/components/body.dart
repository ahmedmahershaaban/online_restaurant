import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/core/default_button.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHomeViewModel>(
        init: Get.find<UserHomeViewModel>(),
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: controller.orderList.isEmpty
                ? const Center(
                    child: Text(
                      'You don\'t have any items right now , you can add some from home screen',
                      textAlign: TextAlign.center,
                    ),
                  )
                : Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: List.generate(
                              controller.orderList.length,
                              (index) => Container(
                                margin: const EdgeInsets.only(top: 20.0),
                                width: double.infinity,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  children: [
                                    Image.network(
                                      controller.orderList[index].foodModel.image,
                                      width: 70,
                                      height: 70,
                                    ),
                                    const SizedBox(width: 10.0),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(controller.orderList[index].foodModel.title),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            controller.orderList[index].foodModel.description,
                                            style: const TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
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
                                                  if (controller.orderList[index].counter > 1) {
                                                    controller.orderList[index] = controller.orderList[index].copyWith(
                                                      counter: controller.orderList[index].counter - 1,
                                                    );
                                                  }
                                                });
                                                controller.update();
                                              },
                                              child: const Icon(
                                                Icons.remove,
                                              )),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Text(controller.orderList[index].counter.toString()),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  controller.orderList[index] = controller.orderList[index].copyWith(
                                                    counter: controller.orderList[index].counter + 1,
                                                  );
                                                });
                                                controller.update();
                                              },
                                              child: const Icon(
                                                Icons.add,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      controller.addingNewOrderMenu
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : DefaultButton(
                              text: 'Order Now  \$${controller.priceCount().toStringAsFixed(2)}',
                              onPressed: () {
                                controller.addNewOrder();
                              },
                            ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
          );
        });
  }
}
