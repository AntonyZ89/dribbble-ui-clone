import 'package:flutter/material.dart';

class ToolbarDetail extends StatelessWidget {
  const ToolbarDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Wrap(
            spacing: 6,
            children: [
              iconButton(icon: Icons.folder),
              iconButton(icon: Icons.favorite),
            ],
          ),
          const Spacer(),
          Wrap(
            spacing: 6,
            children: [
              iconButton(icon: Icons.share),
              iconButton(icon: Icons.comment),
              iconButton(icon: Icons.info),
            ],
          ),
        ],
      ),
    );
  }

  Widget iconButton({required IconData icon, int? badge}) {
    return SizedBox(
      width: 35,
      height: 35,
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.red.shade200),
            ),
          ),
        ),
        child: Icon(icon, size: 15),
      ),
    );
  }
}
