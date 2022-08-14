import 'package:flutter/material.dart';

class FilterListButton extends StatelessWidget {
  final void Function() onPressed;
  final bool active;

  const FilterListButton({
    Key? key,
    required this.onPressed,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: MaterialButton(
        color: active ? Colors.grey.shade200 : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: active ? Colors.grey.shade200 : Colors.grey.shade300),
        ),
        elevation: 0,
        onPressed: onPressed,
        child: Row(
          children: const [
            Icon(
              Icons.filter_list,
              color: Colors.black,
              size: 16,
            ),
            SizedBox(width: 8),
            Text(
              'Filters',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
