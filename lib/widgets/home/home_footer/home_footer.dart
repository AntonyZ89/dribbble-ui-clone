import 'package:flutter/material.dart';
import './list_menu.dart';
import './list_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFooterWidget extends StatelessWidget {
  const HomeFooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/logo.svg', color: Colors.pink),
            const SizedBox(height: 16),
            const Text('Dribbble is the world’s leading'),
            const Text('community for creatives to share, grow,'),
            const Text('and get hired.'),
            const SizedBox(height: 16),
            const ListIcon(),
            ListMenu(),
            const Divider(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // TODO obter ano atual
                Text(
                  '© 2022 Dribbble. All rights reserved',
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(height: 6),
                SvgPicture.asset('assets/images/logo_icon.svg', width: 24, height: 24),
                const SizedBox(height: 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('19,120,250', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                    const SizedBox(width: 4),
                    Text('shots dribbbled', style: TextStyle(color: Colors.grey.shade700)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
