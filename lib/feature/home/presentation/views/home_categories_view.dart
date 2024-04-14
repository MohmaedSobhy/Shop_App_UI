import 'package:flutter/material.dart';
import 'package:shop_ui/feature/home/data/model/category.dart';

class HomeScreenCategoryView extends StatelessWidget {
  const HomeScreenCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(categories[index].image),
                  radius: 35,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  categories[index].title,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
