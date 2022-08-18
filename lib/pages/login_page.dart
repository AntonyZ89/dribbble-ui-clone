import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/login/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: _Body()),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            alignment: Alignment.centerLeft,
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
          const Text(
            'Sign in to Dribbble',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: Row(
              children: const [
                GoogleLoginButton(),
                SizedBox(width: 16),
                TwitterLoginButton(),
              ],
            ),
          ),
          const LoginDivider(),
          const LoginForm()
        ],
      ),
    );
  }
}
