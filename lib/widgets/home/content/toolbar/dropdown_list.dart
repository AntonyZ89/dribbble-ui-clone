import 'package:flutter/material.dart';

class DropdownList extends StatefulWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  final List<Map<String, dynamic>> _items = [
    {'type': 1, 'name': 'Popular'},
    {'type': 2, 'name': 'New & Noteworthy'},
    {'type': 3, 'name': 'Marketplace'}
  ];
  int? _selected = 1;

  void onChanged(int? value) {
    setState(() {
      _selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 185,
      child: InputDecorator(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<int>(
            value: _selected,
            icon: const Icon(Icons.keyboard_arrow_up),
            items: _items.map<DropdownMenuItem<int>>((Map<String, dynamic> item) {
              return DropdownMenuItem<int>(value: item['type'], child: Text(item['name']));
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
