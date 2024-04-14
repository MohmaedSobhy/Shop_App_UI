import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_ui/core/theme/colors.dart';

class RatingWidget extends StatelessWidget {
  final double rate;
  const RatingWidget({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 20,
      decoration: BoxDecoration(
        color: AppColor.kprimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 5,
      ),
      child: Row(
        children: [
          const Icon(
            Ionicons.star,
            size: 13,
            color: Colors.white,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            '$rate',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
