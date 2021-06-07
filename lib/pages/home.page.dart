import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.styles.dart';
import 'package:portfolio/style/font.styles.dart';
import 'package:portfolio/widgets/header/header.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BACKGROUND_COLOR,
      body: Column(
        children: [
          Header(),
          AboutMeContent(),
        ],
      ),
    );
  }
}

class AboutMeContent extends StatelessWidget {
  const AboutMeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Text.rich(
                  TextSpan(
                    text: '< ',
                    style: AppFontStyles.LARGE_ACCENT_BOLD,
                    children: [
                      TextSpan(
                        text: 'Analista e Desenvolvedor de Sistemas',
                        style: AppFontStyles.LARGE_BOLD,
                      ),
                      TextSpan(
                        text: ' />',
                        style: AppFontStyles.LARGE_ACCENT_BOLD,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Image(
                  image: NetworkImage("https://picsum.photos/860/500"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
