import 'package:flutter/material.dart';
import 'package:flutter_application/routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1,
      title: Center(
        child: SvgPicture.asset('assets/images/logo.svg'),
      ),
      leading: IconButton(
        onPressed: () => toggleMenu(context),
        icon: const Icon(Icons.menu, color: Colors.grey),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Center(
              child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.login);
            },
            child: const Text(
              'Sign In',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          )),
        ),
      ],
    );
  }

  void toggleMenu(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
