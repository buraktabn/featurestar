import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  final int value;
  final double size;
  final Color color;

  const StarDisplay(
      {Key key,
      this.value = 0,
      this.size = 16,
      this.color = const Color(0xffffd900)})
      : assert(value != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: this.color,
          size: this.size,
        );
      }),
    );
  }
}
