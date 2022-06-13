import 'package:flutter/material.dart';

import 'components/body.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: const Body(),
      backgroundColor: Colors.white.withOpacity(0.9),
    );
  }
}
