import 'package:basic_app/screens/main_screen.dart';
import 'package:basic_app/screens/onboarding_screens/signup_screen.dart';
import 'package:basic_app/widgets/onboarding_widgets/elise_textfield.dart';
import 'package:basic_app/widgets/onboarding_widgets/onboarding_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneEmailUsernameController =
      TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool isChecked = false;

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
                  'Log In to Elise',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                EliseTextField(
                  hintText: 'Phone, email or username',
                  leadingIcon: Icons.person,
                  controller: phoneEmailUsernameController,
                ),
                EliseTextField(
                  hintText: 'Password',
                  leadingIcon: Icons.lock,
                  controller: passwordController,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue ?? false;
                          });
                        }),
                    Text(
                      'Remember Me?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width:5,),
                    InkWell(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {},
                ),
                  ],
                ),
                
                OnboardingButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ));
                  },
                  label: 'Log In',
                  backgroundColour: Colors.blue,
                  textColour: Colors.white,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignupScreen(),
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
