import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/home/content/card/detail/card_detail.dart';
import './card_footer.dart';
import './card_header.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO add animation to top
        showGeneralDialog(
          context: context,
          pageBuilder: (context, animation, secondaryAnimation) => const CardDetail(),
        );
      },
      child: Column(
        children: const [
          CardHeader(),
          SizedBox(height: 8),
          CardFooter(),
        ],
      ),
    );
  }
}
