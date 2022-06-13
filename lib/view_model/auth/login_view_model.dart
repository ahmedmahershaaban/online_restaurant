import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/model/admin_model.dart';
import 'package:online_restaurant/model/user_model.dart';
import 'package:online_restaurant/view/admin/home/admin_home_view.dart';
import 'package:online_restaurant/view/user/home/user_home_view.dart';
import 'package:online_restaurant/view_model/auth/auth_view_model.dart';

class LoginViewModel extends GetxController {
  final firebaseAuth = FirebaseAuth.instance;
  final firebaseFirestore = FirebaseFirestore.instance;

  @override
  Future<void> onInit() async {
    if (firebaseAuth.currentUser != null) {
      await firebaseFirestore.collection('Users').doc(firebaseAuth.currentUser!.uid).get().then((userDataCheck) async {
        if (userDataCheck.data() == null) {
          await firebaseFirestore.collection('Admins').doc(firebaseAuth.currentUser!.uid).get().then((adminDataCheck) {
            if (adminDataCheck.data() == null) {
              Get.snackbar(
                'SomeThing Went Wrong',
                'Please Try Again Later',
                colorText: Colors.red,
                snackPosition: SnackPosition.BOTTOM,
              );
            } else {
              Get.find<AuthViewModel>().adminModel = AdminModel.fromJson(adminDataCheck.data()!);

              Get.offAll(const AdminHomeView());
            }
          });
        } else {
          Get.find<AuthViewModel>().userModel = UserModel.fromJson(userDataCheck.data()!);
          final token = (await FirebaseMessaging.instance.getToken()) ?? '';
          if (Get.find<AuthViewModel>().userModel!.notificationToken != token) {
            firebaseFirestore.collection('Users').doc(Get.find<AuthViewModel>().userModel!.id).update({
              'notificationToken': token,
            });
            Get.find<AuthViewModel>().userModel = Get.find<AuthViewModel>().userModel!.copyWith(notificationToken: token);
          }
          Get.offAll(const UserHomeView());
        }
      });
    }
    super.onInit();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  login() async {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailController.text);
    bool passwordValid = RegExp(r".{6,}").hasMatch(passwordController.text);
    if (emailValid && passwordValid) {
      try {
        final response = await firebaseAuth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
        if (response.user == null) {
          throw Error();
        } else {
          await firebaseFirestore.collection('Users').doc(response.user!.uid).get().then((userDataCheck) async {
            if (userDataCheck.data() == null) {
              await firebaseFirestore.collection('Admins').doc(response.user!.uid).get().then((adminDataCheck) {
                if (adminDataCheck.data() == null) {
                  Get.snackbar(
                    'SomeThing Went Wrong',
                    'Please Try Again Later',
                    colorText: Colors.red,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                } else {
                  Get.offAll(const AdminHomeView());
                }
              });
            } else {
              Get.find<AuthViewModel>().userModel = UserModel.fromJson(userDataCheck.data()!);
              final token = (await FirebaseMessaging.instance.getToken()) ?? '';
              if (Get.find<AuthViewModel>().userModel!.notificationToken != token) {
                firebaseFirestore.collection('Users').doc(Get.find<AuthViewModel>().userModel!.id).update({
                  'notificationToken': token,
                });
                Get.find<AuthViewModel>().userModel = Get.find<AuthViewModel>().userModel!.copyWith(notificationToken: token);
              }
              Get.offAll(const UserHomeView());
            }
          });
        }
      } catch (e) {
        Get.snackbar(
          'SomeThing Went Wrong',
          'Invalid password or email',
          colorText: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } else {
      Get.snackbar(
        'Validation Error!',
        '${emailValid ? '' : 'Please enter valid email\n'}${passwordValid ? '' : 'Password must be at least 6 characters'}',
        colorText: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  signUp() async {
    bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(emailController.text);
    bool passwordValid = RegExp(r".{6,}").hasMatch(passwordController.text);
    bool userNameValid = userNameController.text.isNotEmpty;
    if (emailValid && passwordValid && userNameValid) {
      try {
        final response = await firebaseAuth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
        if (response.user == null) {
          throw Error();
        } else {
          Get.find<AuthViewModel>().userModel = UserModel(
            id: response.user!.uid,
            name: userNameController.text,
            email: emailController.text,
            notificationToken: (await FirebaseMessaging.instance.getToken()) ?? '',
          );
          await firebaseFirestore.collection('Users').doc(response.user!.uid).set(
                Get.find<AuthViewModel>().userModel!.toJson(),
              );
          Get.offAll(const UserHomeView());
        }
      } catch (e) {
        Get.snackbar(
          'SomeThing Went Wrong',
          'Already registered with this email',
          colorText: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } else {
      Get.snackbar(
        'Validation Error!',
        '${emailValid ? '' : 'Please enter valid email\n'}${passwordValid ? '' : 'Password must be at least 6 characters\n'}${userNameValid ? '' : 'Please enter valid name'}',
        colorText: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
