import 'package:flutter/material.dart';
import '../content/content.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 500,
      child: Column(
        children: [
          const ContentToolbar(),
          Expanded(
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => const ContentCard(),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 8),
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
