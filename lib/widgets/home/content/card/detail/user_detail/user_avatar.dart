import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset('assets/placeholder/50x50.png', width: 40, height: 40),
        ),
        Positioned(
          right: -7,
          bottom: -7,
          child: Container(
            padding: const EdgeInsets.all(3),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/placeholder/50x50.png'),
            ),
          ),
        )
      ],
    );
  }
}
