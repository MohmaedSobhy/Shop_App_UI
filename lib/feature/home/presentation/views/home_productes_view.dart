import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_ui/core/routes/app_router.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';
import 'package:shop_ui/feature/home/presentation/widgets/product_item.dart';

class HomeScreenProductesView extends StatelessWidget {
  const HomeScreenProductesView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            GoRouter.of(context)
                .push(AppRouter.productScreen, extra: products[index]);
          },
          child: ProductItem(
            product: products[index],
          ),
        );
      },
    );
  }
}
