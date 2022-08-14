import 'package:flutter/material.dart';

class DownloadTextField extends StatelessWidget {
  final List<String> _items = [
    'All Shots',
    'Adobe Illustrator',
    'Adobe Photoshop',
    'Adobe XD',
    'Figma',
    'Invision Studio',
    'Sketch',
  ];

  DownloadTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Downloads', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        SizedBox(
          height: 35,
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
                onChanged: (String? value) {},
              ),
            ),
          ),
        )
      ],
    );
  }
}
