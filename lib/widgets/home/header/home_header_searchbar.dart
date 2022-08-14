import 'package:flutter/material.dart';

class HomeHeaderSearchBar extends StatelessWidget {
  const HomeHeaderSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey), // TODO add opacity
        ),
      ),
    );
  }
}
