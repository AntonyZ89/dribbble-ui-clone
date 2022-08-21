import 'package:flutter/material.dart';

class HomeHeaderSearchBar extends StatelessWidget {
  const HomeHeaderSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search),
          focusedBorder: borderStyle(),
          enabledBorder: borderStyle(),
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey.shade300),
        ),
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(100)),
    );
  }
}
