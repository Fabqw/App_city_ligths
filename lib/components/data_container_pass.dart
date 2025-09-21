import 'package:flutter/material.dart';

class DataContainerPass extends StatefulWidget {
  final String? hintText;
  const DataContainerPass({super.key, required this.hintText});

  @override
  State<DataContainerPass> createState() => _DataContainerPassState();
}

class _DataContainerPassState extends State<DataContainerPass> {
  bool _obscureText = true;

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
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white.withValues(alpha: 0.7),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.white.withValues(alpha: 0.7),
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(color: Colors.white, fontSize: 20),
        obscureText: _obscureText,
      ),
    );
  }
}
