import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/view_model/auth/login_view_model.dart';

import 'components/body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewModel>(
        init: LoginViewModel(),
        builder: (controller) {
          return const Scaffold(
            body: Body(),
          );
        });
  }
}
