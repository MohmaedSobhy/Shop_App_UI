import 'package:flutter/material.dart';
import 'package:shop_ui/core/theme/colors.dart';

class ProductDescriptionView extends StatelessWidget {
  final String description;
  const ProductDescriptionView({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              width: 110,
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.kprimaryColor,
              ),
              alignment: Alignment.center,
              child: const Text(
                'Description',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: const TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
