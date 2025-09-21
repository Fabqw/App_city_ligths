import 'package:city/components/container_card_help.dart';
import 'package:flutter/material.dart';

class CardHelpStatic extends StatelessWidget {
  final String? title;
  final String? description;
  final Color? colorTextCard;
  final Color? colorBgCard;
  const CardHelpStatic({
    super.key,
    required this.title,
    required this.description,
    this.colorTextCard,
    this.colorBgCard,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerCardHelp(
      color: colorBgCard,
      children: [
        Text(
          title ?? "",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colorTextCard ?? Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            description ?? "",
            style: TextStyle(
              fontSize: 16,
              color: colorTextCard ?? Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
