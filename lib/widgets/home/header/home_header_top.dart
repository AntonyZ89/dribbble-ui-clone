import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets.dart';

class HomeHeaderTop extends StatelessWidget {
  HomeHeaderTop({Key? key}) : super(key: key);

  final List<String> tags = [
    'Discover',
    'Animation',
    'Branding',
    'Illustration',
    'Mobile',
    'Print',
    'Product Design',
    'Typography',
    'Web Design'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        itemBuilder: (BuildContext context, int index) {
          return Tag(
            text: tags[index],
            active: index == 0,
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
      ),
    );
  }
}
