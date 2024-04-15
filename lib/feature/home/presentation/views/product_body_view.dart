import 'package:flutter/material.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';
import 'package:shop_ui/feature/home/presentation/views/product_app_bar_view.dart';
import 'package:shop_ui/feature/home/presentation/views/product_details_view.dart';
import 'package:shop_ui/feature/home/presentation/views/product_slider_view.dart';

class ProductBodyView extends StatelessWidget {
  final Product product;
  const ProductBodyView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductAppBarView(),
        ProductSliderView(imageUrl: product.image),
        const SizedBox(height: 20),
        ProductDetailesView(product: product),
      ],
    );
  }
}
