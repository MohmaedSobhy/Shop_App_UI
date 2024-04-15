import 'package:flutter/material.dart';
import 'package:shop_ui/feature/home/data/model/product.dart';
import 'package:shop_ui/feature/home/presentation/views/product_body_view.dart';
import 'package:shop_ui/feature/home/presentation/widgets/custom_floating_action_button.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomeFloatingActionButton(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ProductBodyView(
                product: product,
              ),
            )
          ],
        ),
      ),
    );
  }
}
