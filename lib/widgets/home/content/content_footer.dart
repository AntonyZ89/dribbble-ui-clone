import 'package:flutter/material.dart';

class ContentFooter extends StatelessWidget {
  const ContentFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  color: Colors.pink,
                  textColor: Colors.white,
                  child: const Text('Sign up to continue'),
                  onPressed: () {
                    // TODO implement
                  },
                ),
                TextButton(
                  onPressed: () {
                    // TODO implement
                  },
                  child: const Text(
                    'or sign in',
                    style: TextStyle(color: Colors.pink, fontWeight: FontWeight.normal),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Ink(
              width: 50,
              height: 50,
              decoration: const ShapeDecoration(color: Colors.grey, shape: CircleBorder()),
              child: const Icon(Icons.arrow_upward, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
