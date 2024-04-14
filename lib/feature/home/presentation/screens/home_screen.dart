import 'package:flutter/material.dart';
import 'package:shop_ui/core/theme/colors.dart';
import 'package:shop_ui/feature/home/presentation/views/home_body_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kscaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: HomeBodyView(),
        ),
      ),
    );
  }
}
