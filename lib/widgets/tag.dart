import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  final String text;
  final bool active;
  final double? height;
  final bool outlined;
  final void Function()? onTap;
  final void Function(PointerEnterEvent)? onEnter;

  const Tag({
    super.key,
    required this.text,
    this.height,
    this.active = false,
    this.outlined = false,
    this.onTap,
    this.onEnter,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: onEnter,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: !outlined ? (active ? Colors.white : Colors.black.withOpacity(0.7)) : null,
            border: outlined ? Border.all(color: Colors.white) : null,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: active ? Colors.black : Colors.white,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
