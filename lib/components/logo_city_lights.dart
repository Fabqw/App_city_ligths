import 'package:flutter/material.dart';

class LogoCityLights extends StatelessWidget {
  const LogoCityLights({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/city_logo.png",
      width: 150,
      height: 150,
      fit: BoxFit.contain,
    );
  }
}
