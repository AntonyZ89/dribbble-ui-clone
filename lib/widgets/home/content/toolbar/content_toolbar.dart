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
    return Wrap(
      runSpacing: 26,
      children: [
        SizedBox(
          height: 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownList(),
              FilterListButton(onPressed: toggleList, active: _opened),
            ],
          ),
        ),
        if (_opened) const FilterList()
      ],
    );
  }
}
