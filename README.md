# featurestar  
  
A star rating package with features  

<img src="https://github.com/buraktabn/featurestar/raw/master/images/img0.png" />
  
## Getting Started

```yaml
dependencies:  
  featurestar  : ^1.1.0
```

```console
$  flutter pub get
```

```dart
import  'package:featurestar/featurestar.dart';
```

## Example

```dart
FeatureStar(  
	spaceBetween: 15.0,
	data: [  
	  FeatureData(featureText: 'Landlord', rate: 4.8, starColor: Colors.red),  
	  FeatureData(featureText: 'Property', rate: 5.0),  
	  FeatureData(featureText: 'Neighborhood', rate: 4.5),  
	]
);
```
## Customization

|Name|  Type| Description|
|--|--|--|
| featureText |String  | feature text for the star row |
|featureTextStyle  | TextStyle | style of the feature text |
| starColor | Color | color of the stars |
| starSize | double | size of the stars |
| rate | double | rate of the stars (ex: 2.5) |
| rateTextStyle | TextStyle  | style of the rate text |

## Contributions

Contributions of any kind are more than welcome! Feel free to fork and improve in any way you want, make a pull request, or open an issue.
