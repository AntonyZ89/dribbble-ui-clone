import 'package:flutter/material.dart';
import 'package:flutter_application/routes.dart';

class GoogleLoginButton extends StatelessWidget {
  const GoogleLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: MaterialButton(
        // TODO use button without elevation by default
        focusElevation: 0,
        hoverElevation: 0,
        highlightElevation: 0,
        padding: const EdgeInsets.all(2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.home);
        },
        color: Colors.blue.shade600,
        textColor: Colors.white,
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4)),
              ),
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/google_logo.png',
                height: 22,
                fit: BoxFit.contain,
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Fazer login com o Google',
                  style: TextStyle(fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
