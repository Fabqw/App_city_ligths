import 'package:flutter/material.dart';

class TextButtonCityLights extends StatefulWidget {
  final String textButton;
  final Color colors;
  final VoidCallback? onPressed;
  const TextButtonCityLights({
    super.key,
    required this.textButton,
    required this.colors,
    this.onPressed,
  });

  @override
  State<TextButtonCityLights> createState() => _TextButtonCityLightsState();
}

class _TextButtonCityLightsState extends State<TextButtonCityLights> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.textButton,
          style: TextStyle(
            fontSize: 18,
            color: widget.colors,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
