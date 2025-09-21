import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class TitlesCityLights extends StatelessWidget {
  final String title;

  const TitlesCityLights({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      textAlign: TextAlign.center,
    );
    //return Text(title, style: Theme.of(context).textTheme.headlineSmall);
  }
}
