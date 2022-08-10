import 'package:flutter/material.dart';

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
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        itemBuilder: (BuildContext context, int index) {
          return Chip(
            label: Text(
              tags[index],
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.black.withOpacity(0.7),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
      ),
    );
  }
}
