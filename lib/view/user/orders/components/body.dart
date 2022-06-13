import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view_model/user/orders_view_mode.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<OrdersViewModel>(
        builder: (controller) => controller.loadingData
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : controller.ordersMenuList.isEmpty
                ? const Center(
                    child: Text(
                      'You do not have any orders for now',
                      textAlign: TextAlign.center,
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(controller.ordersMenuList.length, (index) {
                        final String status = controller.ordersMenuList[index].orderStatus;
                        final DateTime date = DateTime.fromMillisecondsSinceEpoch(controller.ordersMenuList[index].orderDate);
                        return Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: status == 'Waiting'
                                ? Colors.grey.shade400
                                : status == 'On The Way'
                                    ? Colors.blueAccent.shade100
                                    : Colors.lightGreen,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Date: ${date.day}/${date.month}/${date.year}'),
                              const SizedBox(height: 10.0),
                              Text('Order Status: $status'),
                              const SizedBox(height: 10.0),
                              const Text('Order Items: '),
                              const SizedBox(height: 5.0),
                              ...List.generate(
                                controller.ordersMenuList[index].orderItemList.length,
                                (index2) => Container(
                                  margin: const EdgeInsets.only(top: 3.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(controller.ordersMenuList[index].orderItemList[index2].foodModel.title),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(controller.ordersMenuList[index].orderItemList[index2].counter.toString()),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20.0),
                              Text('Order Total Price: \$${controller.ordersMenuList[index].orderPrice.toStringAsFixed(2)}'),
                            ],
                          ),
                        );
                      }),
                    ],
                  ));
  }
}
