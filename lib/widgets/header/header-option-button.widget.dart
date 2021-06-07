import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.styles.dart';
import 'package:portfolio/style/font.styles.dart';

class HeaderOptionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  HeaderOptionButton({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(AppColors.BACKGROUND_COLOR),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          elevation: MaterialStateProperty.all(0)),
      onPressed: onPressed,
      child: Text(title, style: AppFontStyles.HEADER_OPTION_BUTTON),
    );
  }
}
