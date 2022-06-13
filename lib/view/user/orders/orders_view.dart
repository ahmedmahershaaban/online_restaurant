import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view_model/user/orders_view_mode.dart';

import 'components/body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrdersViewModel>(
        init: OrdersViewModel(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Orders'),
              centerTitle: true,
            ),
            body: const Body(),
            backgroundColor: Colors.white.withOpacity(0.9),
          );
        });
  }
}
