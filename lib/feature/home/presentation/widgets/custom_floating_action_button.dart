import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'add_cart_button.dart';

class CustomeFloatingActionButton extends StatefulWidget {
  const CustomeFloatingActionButton({super.key});

  @override
  State<CustomeFloatingActionButton> createState() =>
      _CustomeFloatingActionButtonState();
}

class _CustomeFloatingActionButtonState
    extends State<CustomeFloatingActionButton> {
  int currentNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {});
                      if (currentNumber > 0) currentNumber--;
                    },
                    iconSize: 18,
                    icon: const Icon(
                      Ionicons.remove_outline,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '$currentNumber',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 5),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                      currentNumber++;
                    },
                    iconSize: 18,
                    icon: const Icon(
                      Ionicons.add_outline,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            AddToCartButton(
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
