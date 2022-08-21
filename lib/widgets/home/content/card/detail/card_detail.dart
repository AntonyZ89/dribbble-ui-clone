import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/home/content/card/detail/toolbar_detail.dart';
import 'package:flutter_application/widgets/home/content/card/detail/user_detail/user_detail.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: GestureDetector(
                        child: const Icon(Icons.close),
                        onTap: () {
                          // TODO add animation to bottom
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Text('Companionship App', style: textTheme.headline6),
                    const SizedBox(height: 8),
                    const UserDetail(),
                    const SizedBox(height: 20),
                    const ToolbarDetail(),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              Image.asset(
                'assets/placeholder/400x300.png',
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Wanna know the project budget and timeline?\n',
                        style: TextStyle(color: Colors.black, height: 1.7),
                        children: [
                          TextSpan(text: 'Shoot a message at '),
                          TextSpan(
                              text: 'hello@purrweb.com',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
                          TextSpan(text: '!', style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
