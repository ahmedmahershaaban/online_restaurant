import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:online_restaurant/model/food_model.dart';
import 'package:online_restaurant/model/order_item_model.dart';
import 'package:online_restaurant/model/order_menu_model.dart';
import 'package:online_restaurant/view_model/auth/auth_view_model.dart';
import 'package:uuid/uuid.dart';

class UserHomeViewModel extends GetxController {
  final firebaseFirestore = FirebaseFirestore.instance;
  List<FoodModel> foodModelList = [];
  List<FoodModel> fastFoodList = [];
  List<FoodModel> firedList = [];
  List<FoodModel> spinachFoodList = [];
  List<OrderItemModel> orderList = [];
  bool addingNewOrderMenu = false;
  @override
  Future<void> onInit() async {
    super.onInit();
    foodModelList = await firebaseFirestore.collection("Food").get().then((value) {
      return value.docs.map((e) {
        final foodItem = FoodModel.fromJson(e.data());
        if (foodItem.category == 'Fast Food') {
          fastFoodList.add(foodItem);
        } else if (foodItem.category == 'Fired') {
          firedList.add(foodItem);
        } else if (foodItem.category == 'Spinach Food') {
          spinachFoodList.add(foodItem);
        }
        return foodItem;
      }).toList();
    });
    update();
  }

  int itemCount() {
    int counter = 0;
    for (final order in orderList) {
      counter = counter + order.counter;
    }
    return counter;
  }

  double priceCount() {
    double price = 0;
    for (final order in orderList) {
      price = price + (order.counter * order.foodModel.price);
    }
    return price;
  }

  Future<void> addNewOrder() async {
    final newOrderMenu = OrderMenuModel(
      orderItemList: orderList,
      id: const Uuid().v4(),
      userId: Get.find<AuthViewModel>().userModel!.id,
      userNotificationToken: Get.find<AuthViewModel>().userModel!.notificationToken,
      orderStatus: 'Waiting',
      orderDate: DateTime.now().millisecondsSinceEpoch,
      orderPrice: priceCount(),
    );
    addingNewOrderMenu = true;
    update();
    await firebaseFirestore.collection("Orders").doc(newOrderMenu.id).set(newOrderMenu.toJson());
    orderList = [];
    addingNewOrderMenu = false;
    update();
  }
}

/*


    List<FoodModel> foodModel = [
      FoodModel(
          id: id1,
          title: "5-minute Ricotta Garlic Herb Dip",
          description: '5-minute Ricotta Garlic Herb Dip takes roughly',
          image: "https://spoonacular.com/recipeImages/1697679-312x231.jpg",
          category: 'Fast Food',
          price: 3.14,
          favorite: false),
      FoodModel(
          id: id2,
          title: "Quick & Easy Blueberry Crisp",
          description: " One portion of this dish contains roughly 0g of protein 0g of fat",
          image: "https://spoonacular.com/recipeImages/1697687-312x231.jpg",
          category: 'Fired',
          price: 5.12,
          favorite: false),
      FoodModel(
          id: id3,
          title: "Spinach Mushroom Omelette with Parmesan",
          description: "Spinach Mushroom Omelette with Parmesan is a gluten free and primal hor d'oeuvre.",
          image: "https://spoonacular.com/recipeImages/1095702-312x231.jpg",
          category: 'Spinach Food',
          price: 8.0,
          favorite: false),
      FoodModel(
          id: id4,
          title: "Grapefruit Ginger Spritzer",
          description: "This gluten free and dairy free recipe has 136 calories, 1g of protein, and 0g of fat",
          image: "https://spoonacular.com/recipeImages/1697711-312x231.jpg",
          category: 'Fast Food',
          price: 6.44,
          favorite: false),
      FoodModel(
          id: id5,
          title: "Applesauce & Apple Butter",
          description:
              "A mixture of apples, cinnamon, lemon juice, and a handful of other ingredients are all it takes to make this recipe so delicious.",
          image: "https://spoonacular.com/recipeImages/1697675-312x231.jpg",
          category: 'Fired',
          price: 7.89,
          favorite: false),
      FoodModel(
          id: id6,
          title: "Switchel",
          description: "flat leaf parsley, garlic, shallot, and a few other ",
          image: "https://spoonacular.com/recipeImages/1697501-312x231.jpg",
          category: 'Spinach Food',
          price: 4.34,
          favorite: false),
      FoodModel(
          id: id7,
          title: "Buffalo Chicken Grilled Cheese",
          description: "cheddar cheese, bread, butter, and a few other things",
          image: "https://spoonacular.com/recipeImages/1697591-312x231.jpg",
          category: 'Fast Food',
          price: 5.85,
          favorite: false),
      FoodModel(
          id: id8,
          title: "The BEST Lemon Bars",
          description: "This recipe makes 6 servings with 796 calories, 9g of protein, and <b>34g of fat each. For 92 cents per serving",
          image: "https://spoonacular.com/recipeImages/715477-312x231.jpg",
          category: 'Fired',
          price: 3.15,
          favorite: false),
    ];
    for (final food in foodModel) {
      firebaseFirestore.collection('Food').doc(food.id).set(food.toJson());
    }


 */
