import 'package:flutter/material.dart';
import 'package:shop_ui/feature/home/presentation/widgets/rating_widget.dart';

class RatingReviewsView extends StatelessWidget {
  final double rate;
  const RatingReviewsView({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingWidget(rate: rate),
        const SizedBox(
          width: 5,
        ),
        const Text(
          '320 Reviews',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
