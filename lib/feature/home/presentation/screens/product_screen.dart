import 'package:flutter/material.dart';
import 'package:shop_ui/core/theme/colors.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';
import 'package:shop_ui/feature/home/presentation/views/product_body_view.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kcontentColor,
      body: SafeArea(
        child: ProductBodyView(
          product: product,
        ),
      ),
    );
  }
}
