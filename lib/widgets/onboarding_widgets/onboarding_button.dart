import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final IconData? icon;
  final String label;
  final Color? backgroundColour;
  final Color? textColour;
  final VoidCallback onPressed;
  const OnboardingButton({
    super.key,
    this.icon,
    required this.label,
    this.backgroundColour,
    this.textColour,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: (icon != null)
            ? ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColour ?? Colors.white,
                  minimumSize: Size.fromHeight(50),
                ),
                onPressed: onPressed,
                icon: Icon(
                  icon,
                  color: textColour ?? Colors.black,
                  size: 32,
                ),
                label: Text(
                  label,
                  style: TextStyle(
                    color: textColour ?? Colors.black,
                    fontSize: 20,
                  ),
                ),
              )
            : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColour ?? Colors.white,
                  minimumSize: Size.fromHeight(50),
                ),
                onPressed: onPressed,
                child: Text(
                  label,
                  style: TextStyle(
                    color: textColour ?? Colors.black,
                    fontSize: 20,
                  ),
                ),
              ));
  }
}
