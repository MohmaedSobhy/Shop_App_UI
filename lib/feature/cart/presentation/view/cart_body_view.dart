import 'package:flutter/material.dart';
import 'package:shop_ui/feature/cart/presentation/widgets/cart_item_widget.dart';

import '../../data/model/cart_item.dart';

class CartBodyView extends StatelessWidget {
  const CartBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cartItems.length,
      itemBuilder: (context, index) {
        return CartItemWidget(
          item: cartItems[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20);
      },
    );
  }
}
