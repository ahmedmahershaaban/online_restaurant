import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view/core/default_button.dart';
import 'package:online_restaurant/view_model/auth/login_view_model.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewModel>(
        init: Get.find<LoginViewModel>(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Online Restaurant'),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome Abroad',
                    style: TextStyle(color: Colors.blue, fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 25.0),
                  TextFormField(
                    controller: controller.emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    controller: controller.passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DefaultButton(
                        text: 'Login',
                        onPressed: () {
                          controller.login();
                        },
                      ),
                      DefaultButton(
                        text: 'Sign Up',
                        onPressed: () {
                          Get.defaultDialog(
                            titleStyle: const TextStyle(color: Colors.blue),
                            title: "Welcome to our restaurant",
                            textConfirm: "Continue",
                            textCancel: "Cancel",
                            content: Column(
                              children: [
                                TextField(
                                  textInputAction: TextInputAction.send,
                                  controller: controller.userNameController,
                                  decoration: const InputDecoration(
                                    hintText: "User Name",
                                  ),
                                ),
                              ],
                            ),
                            onConfirm: () {
                              controller.signUp();
                            },
                          );
                        },
                        mainButton: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
