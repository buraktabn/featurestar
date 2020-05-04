import 'package:featurestar/featurestar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feature Star Example',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child:
          FeatureStar(
            data: [
              FeatureData(featureText: 'Landlord', rate: 3.8, starColor: Colors.red),
              FeatureData(featureText: 'Property', rate: 5.0),
              FeatureData(featureText: 'Neighborhood', rate: 4.5),
            ],
          ),
        ),
      ),
    );
  }
}
