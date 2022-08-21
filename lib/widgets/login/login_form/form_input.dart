import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final Widget label;
  final Color? fillColor;
  final FocusNode focusNode;

  const FormInput({Key? key, required this.fillColor, required this.focusNode, required this.label}) : super(key: key);

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label,
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: TextField(
            decoration: textFieldDecoration(fillColor: widget.fillColor),
            obscureText: true,
            focusNode: widget.focusNode,
          ),
        )
      ],
    );
  }

  InputDecoration textFieldDecoration({Color? fillColor}) {
    OutlineInputBorder focusedBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.pink.shade50, width: 3),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    );

    OutlineInputBorder defaultBorder = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      filled: true,
      fillColor: fillColor,
      focusedBorder: focusedBorder,
      enabledBorder: defaultBorder,
      hintStyle: TextStyle(color: Colors.grey.shade300),
    );
  }
}
