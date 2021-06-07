import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.styles.dart';

import 'header-option-button.widget.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      height: 60,
      color: AppColors.BACKGROUND_COLOR,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          HeaderOptionButton(title: "Sobre Mim", onPressed: () => {}),
          HeaderOptionButton(title: "Projetos", onPressed: () => {}),
          HeaderOptionButton(title: "Certificados", onPressed: () => {}),
        ],
      ),
    );
  }
}
