import 'package:flutter/material.dart';
import '../content/content.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const ContentToolbar(),
          const SizedBox(height: 8),
          for (int i = 0; i < 5; i++) ...[const ContentCard(), if (i < 4) const SizedBox(height: 8)],
          const ContentFooter()
        ],
      ),
    );
  }
}
