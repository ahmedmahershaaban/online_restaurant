import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/model/order_menu_model.dart';
import 'package:online_restaurant/view_model/auth/auth_view_model.dart';

class OrdersViewModel extends GetxController {
  final firebaseFirestore = FirebaseFirestore.instance;

  RxList<OrderMenuModel> ordersMenuList = RxList<OrderMenuModel>([]);
  bool loadingData = true;

  @override
  Future<void> onInit() async {
    super.onInit();
    final snapShot = firebaseFirestore.collection("Orders").where('userId', isEqualTo: Get.find<AuthViewModel>().userModel!.id).snapshots();

    snapShot.listen((snap) {
      ordersMenuList.value = snap.docs.map((e) => OrderMenuModel.fromJson(e.data())).toList();
    });

    loadingData = false;
    update();
  }
}
