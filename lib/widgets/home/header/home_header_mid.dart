import 'package:flutter/material.dart';

class HomeHeaderMid extends StatelessWidget {
  const HomeHeaderMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          Text(
            "Explore the world's leading design portfolios",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Millions of designers and agencies around the world showcase their portfolio work on Dribbble"
            " - the home to the world's best design and creative professionals.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
