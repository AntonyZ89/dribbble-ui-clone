import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock.dart';
import 'package:flutter_application/widgets/widgets.dart';

class HomeHeaderTop extends StatefulWidget {
  const HomeHeaderTop({Key? key}) : super(key: key);

  @override
  State<HomeHeaderTop> createState() => _HomeHeaderTopState();
}

class _HomeHeaderTopState extends State<HomeHeaderTop> {
  final List<String> _tags = HomeHeaderList.list();
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _tags.length,
        itemBuilder: (BuildContext context, int index) {
          return Tag(
            text: _tags[index],
            active: index == _selectedIndex,
            onTap: () => updateIndex(index),
            onEnter: (e) => updateIndex(index),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
      ),
    );
  }

  void updateIndex(int index) {
    setState(() => _selectedIndex = index);
  }
}
