import 'package:flutter/material.dart';

class StarDisplay extends StatelessWidget {
  final double value;
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
          (value == 5)
              ? Icons.star
              : index + 1 < value
                  ? Icons.star
                  : (index == value.toInt() && value % 1 != 0)
                      ? Icons.star_half
                      : Icons.star_border,
          color: this.color,
          size: this.size,
        );
      }),
    );
  }
}
