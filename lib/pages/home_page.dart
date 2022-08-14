import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
          child: Column(
        children: const [
          HomeHeaderWidget(),
          HomeContentWidget(),
          // HomeFooterWidget(),
        ],
      )),
    );
  }
}
