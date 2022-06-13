import 'package:badges/badges.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/auth/login/login_view.dart';
import 'package:online_restaurant/view/user/cart/cart_view.dart';
import 'package:online_restaurant/view/user/orders/orders_view.dart';
import 'package:online_restaurant/view_model/user/home_view_model.dart';

import 'components/body.dart';

class UserHomeView extends StatelessWidget {
  const UserHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserHomeViewModel>(
        init: UserHomeViewModel(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home'),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Get.offAll(const LoginView());
                },
                icon: const Icon(
                  Icons.logout,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Get.to(const OrdersView());
                  },
                  child: const Icon(
                    Icons.list_alt,
                  ),
                ),
                SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Badge(
                    badgeContent: Text(controller.itemCount().toString()),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const CartView());
                      },
                      child: const Icon(
                        Icons.shopping_cart,
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: const Body(),
            backgroundColor: Colors.white.withOpacity(0.9),
          );
        });
  }
}
