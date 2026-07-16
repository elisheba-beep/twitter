import 'package:basic_app/widgets/onboarding_widgets/elise_textfield.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.all_inclusive,
            ),
            Text(
              'Log In to Elise',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        isChecked = newValue ?? false;
                      });
                    }),
                Text('remember me?'),
              ],
            ),
            InkWell(
              child: Text(
                'forgot password',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {},
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Log In',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('dont have an account?'),
                InkWell(
                  child: Text(
                    'signup',
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
