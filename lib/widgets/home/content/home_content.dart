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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ContentCard(index: index),
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            itemCount: 5,
          ),
          const ContentFooter()
        ],
      ),
    );
  }
}
