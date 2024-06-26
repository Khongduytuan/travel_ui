import 'package:flutter/material.dart';
import 'package:travel_ui/core/constants/color_constants.dart';
import 'package:travel_ui/core/constants/dismension_constants.dart';

import '../../constants/textstyle_constants.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.onTap});

  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMediumPadding),
          gradient: Gradients.defaultGradientBackground,
        ),
        child: Text(title, style: TextStyles.defaultStyle.bold.whiteTextColor,),
      ),
    );
  }
}
