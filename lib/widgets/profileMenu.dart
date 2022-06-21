import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:location/assets/colors/colors.dart';

import '../config/constant.dart';
import 'appText.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu(
      {Key? key, required this.text, this.press, required this.icon})
      : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: AppColors.mainColor,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            // SvgPicture.asset(
            //   icon,
            //   color: Colors.red,
            // ),
            Icon(
              icon,
              color: const Color(0xFF5d69b3),
              size: 22,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: AppText(
              text: text,
              size: 16,
              color: AppColors.mainColor,
              weight: FontWeight.w500,
            )),
            const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xFF5d69b3),
              size: 22,
            ),
          ],
        ),
      ),
    );
  }
}
