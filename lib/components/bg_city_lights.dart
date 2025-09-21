import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BgCityLights extends StatelessWidget {
  const BgCityLights({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/city_bg_3.jpg", fit: BoxFit.cover),
        ],
      ),
    );
  }
}
