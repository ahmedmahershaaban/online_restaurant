import 'package:flutter/material.dart';

class FoodCategory extends StatelessWidget {
  final String title;
  final int counter;
  final String assetLocation;
  const FoodCategory({
    Key? key,
    required this.title,
    required this.counter,
    required this.assetLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: 140,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetLocation,
            width: 40,
            height: 40,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          const SizedBox(height: 5),
          Text(
            '$counter item',
            style: const TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
