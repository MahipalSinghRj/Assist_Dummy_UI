import 'package:flutter/material.dart';

import '../Utils/ColorConstants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
          ),
          backgroundColor: ColorConstant.cyan60001,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
