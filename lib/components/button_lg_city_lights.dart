import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class ButtonLgCityLights extends StatefulWidget {
  final String textButton;
  final VoidCallback? onPressed;
  const ButtonLgCityLights({
    super.key,
    required this.textButton,
    this.onPressed,
  });

  @override
  State<ButtonLgCityLights> createState() => _ButtonLgCityLightsState();
}

class _ButtonLgCityLightsState extends State<ButtonLgCityLights> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.tertiaryFixedDim,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          widget.textButton,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
