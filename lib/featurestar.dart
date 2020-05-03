library featurestar;

import 'package:featurestar/stardisplay.dart';
import 'package:flutter/material.dart';

class FeatureStar extends StatelessWidget {
  final List<FeatureData> data;
  final double spaceBetween;

  FeatureStar({Key key, this.data, this.spaceBetween = 15.0});

  @override
  Widget build(BuildContext context) {
    return Container(child: _createList(this.data, this.spaceBetween));
  }

  Widget _createList(List<FeatureData> list, space) {
    List<Widget> tmp = new List<Widget>();

    for (var x in list) {
      tmp.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            x.featureText,
            style: x.featureTextStyle,
          ),
          Row(
            children: <Widget>[
              StarDisplay(
                value: x.rate.toInt(),
                size: x.starSize,
                color: x.starColor,
              ),
              SizedBox(
                width: 21,
              ),
              Text(
                x.rate.toString(),
                style: x.rateTextStyle,
              )
            ],
          )
        ],
      ));
    }

    return Column(
        children: List.generate(list.length + list.length, (i) {
      if (i % 2 == 0) {
        return SizedBox(
          height: space,
        );
      }

      return tmp[i ~/ 2];
    }));
  }
}

class FeatureData {
  String featureText;
  TextStyle featureTextStyle;
  Color starColor;
  double starSize;
  double rate;
  TextStyle rateTextStyle;

  FeatureData(
      {this.featureText,
      this.featureTextStyle =
          const TextStyle(fontSize: 12, color: const Color(0xff1c1c1c)),
      this.starColor = const Color(0xffffd900),
      this.starSize = 16,
      this.rate,
      this.rateTextStyle =
          const TextStyle(color: const Color(0xff1c1c1c), fontSize: 10)})
      : assert(rate != null),
        assert(featureText != null);
}
