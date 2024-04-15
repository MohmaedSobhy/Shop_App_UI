import 'package:flutter/material.dart';
import 'package:shop_ui/core/theme/colors.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback onTap;
  const AddToCartButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColor.kprimaryColor,
          borderRadius: BorderRadius.circular(60),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: const Text(
          "Add to Cart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
