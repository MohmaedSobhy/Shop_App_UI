import 'package:flutter/material.dart';
import 'package:shop_ui/core/theme/colors.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 15,
        ),
        filled: true,
        fillColor: AppColor.kcontentColor,
        hintText: 'Enter Discount Code',
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
        suffixIcon: TextButton(
          onPressed: () {},
          child: const Text(
            'Apply',
            style: TextStyle(
              fontSize: 20,
              color: AppColor.kprimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
