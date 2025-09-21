import 'package:flutter/material.dart';

class ContainerBlurDashboardTitles extends StatelessWidget {
  final List<Widget> children;
  const ContainerBlurDashboardTitles({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
