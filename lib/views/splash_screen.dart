import 'package:flutter/material.dart';
import 'package:quizza_app/components/app_colours.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColours.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('assets/images/logo2.png'),
                  height: 148,
                  width: 116,
                ),
              ),
              // Footer text
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Developed by TG',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
