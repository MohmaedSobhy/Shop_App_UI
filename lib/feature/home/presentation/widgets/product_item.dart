import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_ui/core/theme/colors.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.kcontentColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.asset(
                product.image,
                width: 120,
                height: 120,
              ),
              Text(
                product.title,
                maxLines: 1,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  overflow: TextOverflow.fade,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: List.generate(
                      product.colors.length,
                      (index) {
                        return Container(
                          width: 15,
                          height: 15,
                          margin: const EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                            color: product.colors[index],
                            shape: BoxShape.circle,
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: AppColor.kprimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: const Icon(
                Ionicons.heart_outline,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
        )
      ],
    );
  }
}
