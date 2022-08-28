import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  final int index;

  const CardHeader({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Hero(
        tag: 'card-image-$index',
        child: Image.asset('assets/placeholder/400x300.png'),
      ),
    );
  }
}
