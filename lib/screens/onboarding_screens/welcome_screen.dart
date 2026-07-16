import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.all_inclusive,
            ),
            Text('See whats happening in the world right now'),
            ElevatedButton(
              onPressed: () {},
              child: Text('continue with google'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('continue with apple'),
            ),
            Text(
              'or',
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'create an account',
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
