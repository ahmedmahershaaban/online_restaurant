import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/auth/login/login_view.dart';
import 'package:online_restaurant/view_model/admin/admin_home_view_model.dart';
import 'components/body.dart';

class AdminHomeView extends StatelessWidget {
  const AdminHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminHomeViewModel>(
        init: AdminHomeViewModel(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Admin Home'),
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
            ),
            body: const Body(),
            backgroundColor: Colors.white.withOpacity(0.9),
          );
        });
  }
}
