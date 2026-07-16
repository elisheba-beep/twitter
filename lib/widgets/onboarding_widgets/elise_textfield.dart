import 'package:flutter/material.dart';

class EliseTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData leadingIcon;
  const EliseTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
    controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        prefixIcon: Icon(
         leadingIcon,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
      ),
    );
  }
}
