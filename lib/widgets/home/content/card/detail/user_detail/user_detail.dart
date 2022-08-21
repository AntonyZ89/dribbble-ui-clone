import 'package:flutter/material.dart';
import 'user_avatar.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const UserAvatar(),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                children: const [
                  TextSpan(text: 'Alexandr V '),
                  TextSpan(text: 'for ', style: TextStyle(color: Colors.grey)),
                  TextSpan(text: 'Purrweb UI/UX Studio')
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black),
                text: 'Follow • ',
                children: const [
                  TextSpan(text: 'Hire Us', style: TextStyle(color: Colors.pink)),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
