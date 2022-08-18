import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListIcon extends StatelessWidget {
  const ListIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 14,
        children: [
          SvgPicture.asset('assets/icon/dribbble.svg', width: 18, height: 18),
          SvgPicture.asset('assets/icon/twitter.svg', width: 18, height: 18),
          SvgPicture.asset('assets/icon/facebook.svg', width: 18, height: 18),
          SvgPicture.asset('assets/icon/instagram.svg', width: 18, height: 18),
          SvgPicture.asset('assets/icon/pinterest.svg', width: 18, height: 18),
        ],
      ),
    );
  }
}
