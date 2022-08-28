import 'package:flutter/material.dart';
import './toolbar.dart';

class ContentToolbar extends StatefulWidget {
  const ContentToolbar({Key? key}) : super(key: key);

  @override
  State<ContentToolbar> createState() => _ContentToolbarState();
}

class _ContentToolbarState extends State<ContentToolbar> {
  bool _opened = false;

  void toggleList() {
    setState(() {
      _opened = !_opened;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DropdownList(),
              FilterListButton(onPressed: toggleList, active: _opened),
            ],
          ),
        ),
        const SizedBox(height: 16),
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: SizedBox(
            height: _opened ? 500 : 0,
            child: const FilterList(),
          ),
        ),
      ],
    );
  }
}
