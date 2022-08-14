import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerTextField extends StatelessWidget {
  const ColorPickerTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Color', style: TextStyle(fontWeight: FontWeight.bold)),
        OutlinedButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.grey.shade400),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.red.shade200),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.grey.shade200),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: MaterialPicker(
                    pickerColor: Colors.red,
                    onColorChanged: (Color color) {},
                  ),
                );
              },
            );
          },
          child: Row(
            children: const [
              Icon(Icons.palette, size: 15),
              SizedBox(width: 8),
              Text('Enter hex or select'),
            ],
          ),
        )
      ],
    );
  }
}
