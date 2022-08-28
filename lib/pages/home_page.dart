import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      drawer: HomeDrawer(),
      drawerScrimColor: Colors.transparent,
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            HomeHeaderWidget(),
            HomeContentWidget(),
            HomeFooterWidget(),
          ],
        ),
      ),
    );
  }
}
