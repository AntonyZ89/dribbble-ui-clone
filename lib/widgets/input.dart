import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final Widget? label;
  final IconData? prefixIcon;
  final String? hintText;

  const Input({Key? key, this.label, this.prefixIcon, this.hintText}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final FocusNode _focusNode = FocusNode();
  Color? _fillColor;

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() => _fillColor = _focusNode.hasFocus ? Colors.white : null);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) widget.label!,
        const SizedBox(height: 8),
        SizedBox(
          height: 40,
          child: TextField(
            decoration: textFieldDecoration(),
            obscureText: true,
            focusNode: _focusNode,
          ),
        )
      ],
    );
  }

  InputDecoration textFieldDecoration() {
    final Color textColor = _focusNode.hasFocus ? Colors.grey.shade300 : Colors.grey.shade400;

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
      fillColor: _fillColor,
      prefixIconColor: textColor,
      prefixIcon: Icon(widget.prefixIcon, color: textColor),
      focusedBorder: focusedBorder,
      enabledBorder: defaultBorder,
      hintStyle: TextStyle(color: textColor),
      hintText: widget.hintText,
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
