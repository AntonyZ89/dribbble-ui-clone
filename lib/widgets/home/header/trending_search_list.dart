import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets.dart';

class TrendingSearchList extends StatelessWidget {
  TrendingSearchList({Key? key}) : super(key: key);

  final List<String> trendingSearches = ['landing page', 'ios', 'food', 'landingpage', 'uxdesign', 'app design'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 8,
      runSpacing: 8,
      children: [
        const Text(
          'Trending searches',
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
        ...trendingSearches.map(
          (String trending) => UnconstrainedBox(
            child: Tag(text: trending, height: 30, outlined: true),
          ),
        ),
      ],
    );
  }
}
