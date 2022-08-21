import 'package:flutter/material.dart';
import 'package:flutter_application/routes.dart';

class TwitterLoginButton extends StatelessWidget {
  const TwitterLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        padding: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        height: 50,
        color: Colors.grey.shade200,
        elevation: 0,
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.home);
        },
        child: Image.asset(
          'assets/images/twitter_logo.png',
          width: 16,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
