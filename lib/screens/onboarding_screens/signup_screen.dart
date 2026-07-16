import 'package:basic_app/widgets/onboarding_widgets/elise_textfield.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.all_inclusive,
            ),
            Text(
              'Create an Elise account',
            ),
            EliseTextField(
              hintText: 'First Name',
              leadingIcon: Icons.cases_outlined,
              controller: firstNameController,
            ),
            EliseTextField(
              hintText: 'Last Name',
              leadingIcon: Icons.cases_outlined,
              controller: lastNameController,
            ),
            EliseTextField(
              hintText: 'Email',
              leadingIcon: Icons.cases_outlined,
              controller: emailController,
            ),
            EliseTextField(
              hintText: 'Phone Number',
              leadingIcon: Icons.cases_outlined,
              controller: phoneNumberController,
            ),
            EliseTextField(
              hintText: 'Password',
              leadingIcon: Icons.cases_outlined,
              controller: passwordController,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('already have an account?'),
                InkWell(
                  child: Text(
                    'login',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
