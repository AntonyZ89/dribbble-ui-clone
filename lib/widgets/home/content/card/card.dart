import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/home/content/card/detail/card_detail.dart';
import './card_footer.dart';
import './card_header.dart';

class ContentCard extends StatelessWidget {
  final int index;

  const ContentCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO add animation to top
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CardDetail(index: index),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          CardHeader(index: index),
          const SizedBox(height: 8),
          const CardFooter(),
        ],
      ),
    );
  }
}
