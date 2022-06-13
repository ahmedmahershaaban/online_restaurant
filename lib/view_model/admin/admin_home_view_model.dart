import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/model/order_menu_model.dart';

class AdminHomeViewModel extends GetxController {
  final firebaseFirestore = FirebaseFirestore.instance;

  RxList<OrderMenuModel> ordersMenuList = RxList<OrderMenuModel>([]);
  RxList<OrderMenuModel> historyModeList = RxList<OrderMenuModel>([]);
  RxList<OrderMenuModel> liveModeList = RxList<OrderMenuModel>([]);
  bool loadingData = true;

  @override
  Future<void> onInit() async {
    super.onInit();
    final snapShot = firebaseFirestore.collection("Orders").snapshots();

    snapShot.listen((snap) {
      ordersMenuList.value = [];
      historyModeList.value = [];
      liveModeList.value = [];
      ordersMenuList.value = snap.docs.map((e) {
        final order = OrderMenuModel.fromJson(e.data());

        if (order.orderStatus == 'Done') {
          historyModeList.add(order);
        } else {
          liveModeList.add(order);
        }
        update();
        return order;
      }).toList();
    });

    loadingData = false;
    update();
  }

  Future<void> updateOrder(int index) async {
    await firebaseFirestore.collection("Orders").doc(liveModeList[index].id).update({
      'orderStatus': liveModeList[index].orderStatus == 'Waiting' ? 'On The Way' : 'Done',
    });
  }
}
