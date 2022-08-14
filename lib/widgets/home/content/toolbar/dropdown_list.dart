import 'package:flutter/material.dart';

class DropdownList extends StatelessWidget {
  final List<String> _items = ['Popular', 'New & Noteworthy', 'Marketplace'];

  DropdownList({Key? key}) : super(key: key);

  void onChanged(String? value) {
    // TODO implement
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
          child: DropdownButton<String>(
            value: _items[0],
            icon: const Icon(Icons.keyboard_arrow_up),
            items: _items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
