import 'package:flutter/material.dart';

class ContainerCardHelp extends StatelessWidget {
  final List<Widget> children;
  final Color? color;
  const ContainerCardHelp({super.key, required this.children, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? Colors.white.withValues(alpha: 0.30),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
      ),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}
