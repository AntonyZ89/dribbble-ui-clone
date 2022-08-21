import 'package:flutter/material.dart';
import 'package:flutter_application/pages/pages.dart';
import 'package:flutter_application/routes.dart';

void main() {
  return runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'NHaasGrotesk'),
      initialRoute: '/',
      routes: {
        Routes.home: (context) => const HomePage(),
        Routes.login: (context) => const LoginPage(),
      },
    );
  }
}
