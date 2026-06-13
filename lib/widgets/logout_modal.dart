import 'package:flutter/material.dart';

class LogoutModal extends StatelessWidget {
  const LogoutModal({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('logout?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('close'),
        ),
      ],
    );
  }
}
