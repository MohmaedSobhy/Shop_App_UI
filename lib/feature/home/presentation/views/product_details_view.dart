import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';
import 'package:shop_ui/feature/home/presentation/views/product_info_view.dart';
import 'package:shop_ui/feature/home/presentation/views/select_color_view.dart';

import 'product_description_view.dart';

class ProductDetailesView extends StatelessWidget {
  final Product product;
  const ProductDetailesView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductInfoView(product: product),
          const SizedBox(height: 20),
          const Text(
            'Color',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SelectColorView(colors: product.colors),
          const SizedBox(height: 10),
          ProductDescriptionView(description: product.description),
        ],
      ),
    );
  }
}
