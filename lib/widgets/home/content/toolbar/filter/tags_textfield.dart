import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagsTextField extends StatelessWidget {
  const TagsTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Tags', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          // TODO fix focus styles
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 13),
            filled: true,
            fillColor: Colors.grey.shade200, // FIXME add opacity
            prefixIcon: const Icon(Icons.search), // TODO change color to [[Colors.grey]]
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
      ],
    );
  }
}
