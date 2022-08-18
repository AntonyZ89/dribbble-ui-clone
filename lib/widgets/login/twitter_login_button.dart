import 'package:flutter/material.dart';

class TwitterLoginButton extends StatelessWidget {
  const TwitterLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        height: 50,
        color: Colors.grey.shade200,
        elevation: 0,
        onPressed: () {},
        child: Image.asset(
          'assets/images/twitter_logo.png',
          width: 16,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
