import 'package:flutter/material.dart';
import 'package:shop_ui/feature/home/presentation/widgets/circle_color.dart';

class SelectColorView extends StatefulWidget {
  final List<Color> colors;
  const SelectColorView({super.key, required this.colors});

  @override
  State<SelectColorView> createState() => _SelectColorViewState();
}

class _SelectColorViewState extends State<SelectColorView> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.colors.length, (index) {
        return InkWell(
            onTap: () {
              setState(() {
                current = index;
              });
            },
            child: CircleColorWidget(
              color: widget.colors[index],
              currentColor: index == current,
            ));
      }),
    );
  }
}
