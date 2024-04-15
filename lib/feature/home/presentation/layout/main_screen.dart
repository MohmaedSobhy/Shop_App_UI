import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_ui/core/theme/colors.dart';
import 'package:shop_ui/feature/cart/presentation/screens/cart_screen.dart';
import 'package:shop_ui/feature/home/presentation/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentScreen = 2;
  List<Widget> screens = const [
    Scaffold(),
    Scaffold(),
    HomeScreen(),
    CartScreen(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.kprimaryColor,
        shape: const CircleBorder(),
        onPressed: () {
          setState(() {
            currentScreen = 2;
          });
        },
        child: const Icon(
          Ionicons.home,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 3,
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = 0;
                });
              },
              icon: Icon(
                Ionicons.grid_outline,
                color: (currentScreen == 0)
                    ? AppColor.kprimaryColor
                    : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = 1;
                });
              },
              icon: Icon(
                Ionicons.heart_outline,
                color: (currentScreen == 1)
                    ? AppColor.kprimaryColor
                    : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = 3;
                });
              },
              icon: Icon(
                Ionicons.cart_outline,
                color: (currentScreen == 3)
                    ? AppColor.kprimaryColor
                    : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = 4;
                });
              },
              icon: Icon(
                Ionicons.person_outline,
                color: (currentScreen == 4)
                    ? AppColor.kprimaryColor
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
