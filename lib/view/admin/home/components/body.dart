import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/core/default_button.dart';
import 'package:online_restaurant/view_model/admin/admin_home_view_model.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isHistoryMode = false;
  @override
  Widget build(BuildContext context) {
    return GetX<AdminHomeViewModel>(
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
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: DefaultButton(
                              text: isHistoryMode ? 'Go to live orders' : 'Go to history orders ',
                              onPressed: () {
                                setState(() {
                                  isHistoryMode = !isHistoryMode;
                                });
                              }),
                        ),
                        isHistoryMode
                            ? Column(
                                children: List.generate(controller.historyModeList.length, (index) {
                                final String status = controller.historyModeList[index].orderStatus;
                                final DateTime date = DateTime.fromMillisecondsSinceEpoch(controller.historyModeList[index].orderDate);
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
                                        controller.historyModeList[index].orderItemList.length,
                                        (index2) => Container(
                                          margin: const EdgeInsets.only(top: 3.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(controller.historyModeList[index].orderItemList[index2].foodModel.title),
                                              const SizedBox(
                                                width: 20.0,
                                              ),
                                              Text(controller.historyModeList[index].orderItemList[index2].counter.toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20.0),
                                      Text('Order Total Price: \$${controller.historyModeList[index].orderPrice.toStringAsFixed(2)}'),
                                    ],
                                  ),
                                );
                              }))
                            : Column(
                                children: List.generate(controller.liveModeList.length, (index) {
                                final String status = controller.liveModeList[index].orderStatus;
                                final DateTime date = DateTime.fromMillisecondsSinceEpoch(controller.liveModeList[index].orderDate);
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
                                        controller.liveModeList[index].orderItemList.length,
                                        (index2) => Container(
                                          margin: const EdgeInsets.only(top: 3.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(controller.liveModeList[index].orderItemList[index2].foodModel.title),
                                              const SizedBox(
                                                width: 20.0,
                                              ),
                                              Text(controller.liveModeList[index].orderItemList[index2].counter.toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20.0),
                                      Text('Order Total Price: \$${controller.liveModeList[index].orderPrice.toStringAsFixed(2)}'),
                                      const SizedBox(height: 20.0),
                                      Center(
                                        child: DefaultButton(
                                            text: status == 'Waiting' ? 'On The Way' : 'Done',
                                            onPressed: () {
                                              controller.updateOrder(index);
                                            }),
                                      ),
                                    ],
                                  ),
                                );
                              }))
                      ],
                    ),
                  ));
  }
}
