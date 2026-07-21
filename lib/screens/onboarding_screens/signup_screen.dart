import 'package:basic_app/screens/main_screen.dart';
import 'package:basic_app/screens/onboarding_screens/login_screen.dart';
import 'package:basic_app/widgets/onboarding_widgets/elise_textfield.dart';
import 'package:basic_app/widgets/onboarding_widgets/onboarding_button.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.earbuds,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Create an Elise account',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                EliseTextField(
                  hintText: 'First Name',
                  leadingIcon: Icons.cases,
                  controller: firstNameController,
                ),
                EliseTextField(
                  hintText: 'Last Name',
                  leadingIcon: Icons.cases,
                  controller: lastNameController,
                ),
                EliseTextField(
                  hintText: 'Email',
                  leadingIcon: Icons.mail,
                  controller: emailController,
                ),
                EliseTextField(
                  hintText: 'Phone Number',
                  leadingIcon: Icons.phone,
                  controller: phoneNumberController,
                ),
                EliseTextField(
                  hintText: 'Password',
                  leadingIcon: Icons.lock,
                  controller: passwordController,
                ),
                OnboardingButton(
                    label: 'Sign Up',
                    backgroundColour: Colors.blue,
                    textColour: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    }),
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
      ),
    );
  }
}
