import 'package:flutter/material.dart';
import 'package:flutter_application/routes.dart';
import 'package:flutter_application/widgets/input.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      runSpacing: 26,
      children: [
        const Input(
          label: Text('Username or Email Address', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Input(
          label: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Forgot password?',
                style: TextStyle(color: Colors.deepPurple),
              )
            ],
          ),
        ),
        // TODO substituir por Button que vem sem elevation por padrão
        MaterialButton(
          focusElevation: 0,
          hoverElevation: 0,
          highlightElevation: 0,
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.home);
          },
          color: Colors.pink.shade400,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minWidth: double.infinity,
          child: const Text('Sign In'),
        ),
        Center(
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: 'Not a member? '),
                TextSpan(text: 'Sign up now', style: TextStyle(color: Colors.deepPurple)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
