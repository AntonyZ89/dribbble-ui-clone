import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1,
      title: const Center(
        child: Text('Dribbble'),
      ),
      leading: IconButton(
        onPressed: toggleMenu,
        icon: const Icon(Icons.menu, color: Colors.grey),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Center(
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  void toggleMenu() {
    // TODO implement
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
