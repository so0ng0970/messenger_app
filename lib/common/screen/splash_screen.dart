import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 102, 255),
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
