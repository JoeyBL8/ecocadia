import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.height,
    super.key,
  });

  final double height;

  static const aspectRatio = 63.5 / 88.9;

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: const Placeholder());
  }
}
