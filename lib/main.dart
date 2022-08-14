import 'package:flutter/material.dart';
import 'package:flutter_application/pages/pages.dart';

void main() {
  return runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'NHaasGrotesk'),
      home: const HomePage(),
    );
  }
}
