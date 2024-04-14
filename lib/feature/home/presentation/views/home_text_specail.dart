import 'package:flutter/material.dart';

class HomeTextSpecial extends StatelessWidget {
  const HomeTextSpecial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Specail For You',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          child: const Text('See all'),
          onPressed: () {},
        ),
      ],
    );
  }
}
