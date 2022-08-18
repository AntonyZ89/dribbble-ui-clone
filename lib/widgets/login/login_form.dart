import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        direction: Axis.horizontal,
        runSpacing: 26,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Username or Email Address', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(decoration: InputDecoration(filled: true))
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Password', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.deepPurple),
                  )
                ],
              ),
              const SizedBox(height: 8),
              const TextField(decoration: InputDecoration(filled: true))
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            // color: Colors.pink,
            // textColor: Colors.white,

            // mini: const Size.fromHeight(50), // NEW
            style: ElevatedButton.styleFrom(
              primary: Colors.pink.shade400,
              minimumSize: const Size.fromHeight(35),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('Sign In'),
          ),
          Center(
            child: Wrap(
              spacing: 8,
              children: const [Text('Not a member?'), Text('Sign up now', style: TextStyle(color: Colors.deepPurple))],
            ),
          )
        ],
      ),
    );
  }
}
