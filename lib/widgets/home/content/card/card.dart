import 'package:flutter/material.dart';
import './card_footer.dart';
import './card_header.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CardHeader(),
        SizedBox(height: 8),
        CardFooter(),
      ],
    );
  }
}
