import 'package:basic_app/screens/onboarding_screens/login_screen.dart';
import 'package:basic_app/screens/onboarding_screens/signup_screen.dart';
import 'package:basic_app/widgets/onboarding_widgets/onboarding_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Icon(
                Icons.earbuds,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'See whats happening in the world right now',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              OnboardingButton(
                  label: 'Continue with Google',
                  icon: Icons.g_mobiledata,
                  onPressed: () {}),
              OnboardingButton(
                  label: 'Continue with Apple',
                  icon: Icons.apple,
                  onPressed: () {}),
              Text(
                'or',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              OnboardingButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  );
                },
                label: 'Create an account',
                backgroundColour: Colors.blue,
                textColour: Colors.white,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
