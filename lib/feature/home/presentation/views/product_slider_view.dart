import 'package:flutter/material.dart';

class ProductSliderView extends StatefulWidget {
  final String imageUrl;
  const ProductSliderView({super.key, required this.imageUrl});

  @override
  State<ProductSliderView> createState() => _ProductSliderViewState();
}

class _ProductSliderViewState extends State<ProductSliderView> {
  int currentView = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 250,
          child: PageView.builder(
            onPageChanged: (index) {
              setState(() {
                currentView = index;
              });
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.asset(widget.imageUrl);
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: (currentView == index) ? 20 : 11,
                height: 11,
                margin: const EdgeInsets.only(left: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (currentView == index)
                      ? Colors.black
                      : Colors.transparent,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
