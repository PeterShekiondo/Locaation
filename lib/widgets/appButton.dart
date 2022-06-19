import 'package:flutter/cupertino.dart';
import 'package:location/assets/colors/colors.dart';

import 'appText.dart';

class AppButton extends StatelessWidget {
  final Color labelColor;
  final Color backgroundColor;
  double labelSize;
  double size;
  final Color borderColor;
  final String? label;
  final IconData? icon;
  final FontWeight labelWeight;
  bool isIcon;

  AppButton(
      {Key? key, required this.labelColor,
        required this.backgroundColor,
        required this.labelSize,
        this.size = 60,
        required this.borderColor,
        required this.label,
        this.icon,
        this.labelWeight = FontWeight.normal,
        this.isIcon = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: AppColors.buttonBackGroundColor,
            border: Border.all(
                color: borderColor,
                width: 1.0
            )
        ),
        child: isIcon ? AppText(
          text: label!,
          size: labelSize,
          color: labelColor,
          weight: labelWeight,
        ): Icon(icon));
  }
}
