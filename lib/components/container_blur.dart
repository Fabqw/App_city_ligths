import 'package:flutter/material.dart';

class ContainerBlur extends StatelessWidget {
  final List<Widget> children;

  const ContainerBlur({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.30),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
