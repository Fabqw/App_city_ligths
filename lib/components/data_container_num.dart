import 'package:flutter/material.dart';

class DataContainerNum extends StatefulWidget {
  final String? hintText;
  final Icon? prefixIcon;
  const DataContainerNum({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  State<DataContainerNum> createState() => _DataContainerState();
}

class _DataContainerState extends State<DataContainerNum> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hintText ?? "",
          hintStyle: const TextStyle(color: Colors.white70),
          prefixIcon: widget.prefixIcon,
          border: InputBorder.none,
        ),
        style: const TextStyle(color: Colors.white, fontSize: 20),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
