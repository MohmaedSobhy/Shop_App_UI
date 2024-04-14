import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_ui/feature/home/presentation/views/home_app_bar_view.dart';
import 'package:shop_ui/feature/home/presentation/views/home_productes_view.dart';
import 'package:shop_ui/feature/home/presentation/views/home_search_bar.dart';
import 'package:shop_ui/feature/home/presentation/views/home_slider_view.dart';

import 'home_categories_view.dart';
import 'home_text_specail.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBarView(),
              SizedBox(height: 20),
              HomeScreenSearchBarView(),
              SizedBox(height: 20),
              HomwScreenSliderView(),
              SizedBox(height: 20),
              HomeScreenCategoryView(),
              SizedBox(height: 10),
              HomeTextSpecial(),
            ],
          ),
        ),
        SliverFillRemaining(
          child: HomeScreenProductesView(),
        ),
      ],
    );
  }
}
