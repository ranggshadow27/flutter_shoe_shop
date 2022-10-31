import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoe_shop_app/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/signin-page'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image_splash.png'),
            ),
          ),
        ),
      ),
    );
  }
}
