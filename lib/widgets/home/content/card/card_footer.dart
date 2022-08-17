import 'package:flutter/material.dart';

class CardFooter extends StatelessWidget {
  const CardFooter({Key? key}) : super(key: key);

  // ContextAPI ou Redux

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: Image.asset('assets/placeholder/50x50.png'),
            ),
            const SizedBox(width: 8),
            const Text('Rylic Studio'),
            const SizedBox(width: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.grey.shade300,
                padding: const EdgeInsets.all(2),
                child: const Text(
                  'TEAM',
                  style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(children: const [
          Icon(Icons.favorite, size: 18, color: Colors.grey),
          SizedBox(width: 3),
          Text('77'),
        ]),
        const SizedBox(width: 8),
        Row(children: const [
          Icon(Icons.remove_red_eye, size: 18, color: Colors.grey),
          SizedBox(width: 3),
          Text('3.2k'),
        ])
      ],
    );
  }
}
