import 'dart:async';

import 'package:flutter/material.dart';
import 'package:messenger_app/common/screen/home_screen.dart';
import 'package:messenger_app/const/color.dart';
import 'package:messenger_app/user/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        const Duration(
          seconds: 5,
        ), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SPLASH_BG_COLOR,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/splash/background.png',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 50,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'The stories we leave behind.',
                  style: TextStyle(
                    fontFamily: 'OffBitTrial',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Let\'s make memories together.',
                  style: TextStyle(
                    fontFamily: 'OffBitTrial',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'SUPP:',
                style: TextStyle(
                  fontFamily: 'OffBitTrial',
                  fontWeight: FontWeight.w700,
                  fontSize: 90,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
