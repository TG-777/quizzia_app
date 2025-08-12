import 'package:flutter/material.dart';
import 'package:quizza_app/components/app_colours.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 24),
          child: Column(
            children: [
              Image.asset(
                'assets/images/pattern.png',
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 24),
              const Text(
                'Quizzia helps you challenge and assess your knowledge in any field of study',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'We’ve got various categories of quizzes, including mathematics, science, anime, books, music and so much more. Let’s get started now',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColours.black2,
                    height: 1.7,
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 17),
                    elevation: 0,
                    backgroundColor: AppColours.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By clicking Get Started, you agree to our ',
                  style: textStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms of Service ',
                      style: textStyle(
                        fontweight: FontWeight.w600
                      )
                    ),
                    const TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: textStyle(
                        fontweight: FontWeight.w600
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle textStyle({FontWeight? fontweight}) {
    return TextStyle(
        fontSize: 12,
        color: AppColours.black2,
        height: 2,
        fontWeight: fontweight ?? FontWeight.w400,
        fontFamily: 'Raleway');

  }
}
