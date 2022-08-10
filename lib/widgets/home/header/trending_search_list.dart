import 'package:flutter/material.dart';

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
      runSpacing: 0,
      children: [
        const Text(
          'Trending Searches',
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
        ...trendingSearches.map(
          (String trending) => Chip(
            shape: const StadiumBorder(side: BorderSide()),
            label: Text(
              trending,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
