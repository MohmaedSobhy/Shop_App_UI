import 'package:flutter/material.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';

import 'rating_reviews_view.dart';

class ProductInfoView extends StatelessWidget {
  final Product product;
  const ProductInfoView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                RatingReviewsView(rate: product.rate),
              ],
            ),
            const Spacer(),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'Seller: '),
                  TextSpan(
                    text: 'Tarqual isalm',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
