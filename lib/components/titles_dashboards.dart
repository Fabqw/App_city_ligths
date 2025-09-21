import 'package:city/components/container_blur_dashboard_titles.dart';
import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class TitlesDashboards extends StatelessWidget {
  final String title;
  const TitlesDashboards({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ContainerBlurDashboardTitles(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.tertiaryFixedDim,
            letterSpacing: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
