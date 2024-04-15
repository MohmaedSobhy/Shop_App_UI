import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_ui/feature/cart/presentation/view/cart_body_view.dart';

import '../view/bottom_sheet_view.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leadingWidth: 60,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            icon: const Icon(
              Ionicons.chevron_back,
            ),
          ),
        ),
      ),
      bottomSheet: const BottomSheetView(),
      body: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: CartBodyView(),
      ),
    );
  }
}
