import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_ui/core/theme/colors.dart';

class HomeScreenSearchBarView extends StatelessWidget {
  const HomeScreenSearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: AppColor.kcontentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          const Icon(
            Ionicons.search,
          ),
          const SizedBox(
            width: 10,
          ),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.grey,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.options_outline,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
