import 'package:city/core/colors_city_lights.dart';
import 'package:flutter/material.dart';

class CheckboxCityLigths extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String? label;

  const CheckboxCityLigths({
    super.key,
    required this.value,
    required this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: AppColors.tertiaryFixedDim,
          checkColor: Colors.white,
        ),
        if (label != null)
          Expanded(
            child: Text(
              label!,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
      ],
    );
  }
}
