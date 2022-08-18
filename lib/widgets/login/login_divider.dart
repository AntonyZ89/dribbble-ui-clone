import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 65,
      child: Row(
        children: [
          // FIXME resolve conflict and use Divider()
          Expanded(child: Container(height: 1, color: Colors.grey.shade300)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('Or'),
          ),
          Expanded(child: Container(height: 1, color: Colors.grey.shade300))
        ],
      ),
    );
  }
}
