import 'package:shop_ui/core/utils/assets.dart';

class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(title: "Shoes", image: "${AppAssets.imagesPath}shoes.jpg"),
  Category(title: "Beauty", image: "${AppAssets.imagesPath}beauty.png"),
  Category(title: "PC", image: "${AppAssets.imagesPath}pc.jpg"),
  Category(title: "Mobile", image: "${AppAssets.imagesPath}mobile.jpg"),
  Category(title: "Watch", image: "${AppAssets.imagesPath}watch.png"),
];
