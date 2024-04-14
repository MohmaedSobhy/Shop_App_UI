import 'package:flutter/material.dart';
import 'package:shop_ui/core/utils/assets.dart';

class HomwScreenSliderView extends StatefulWidget {
  const HomwScreenSliderView({super.key});

  @override
  State<HomwScreenSliderView> createState() => _HomwScreenSliderViewState();
}

class _HomwScreenSliderViewState extends State<HomwScreenSliderView> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemCount: 4,
            onPageChanged: (index) {
              setState(() {
                currentSlider = index;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppAssets.slider),
                  ),
                ),
              );
            },
          ),
        ),
        Positioned.fill(
          bottom: 8,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) {
                  return AnimatedContainer(
                    width: (index == currentSlider) ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(left: 2),
                    decoration: BoxDecoration(
                      color: (index == currentSlider)
                          ? Colors.black
                          : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                    ),
                    duration: const Duration(
                      microseconds: 300,
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}
