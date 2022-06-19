import 'package:flutter/cupertino.dart';
import 'package:location/assets/colors/colors.dart';

class Button extends StatelessWidget {
  final double width;
  final String? imageName;

  Button({this.width = 20, this.imageName}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
      ),
      width: width,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/"+imageName!)
        ],
      ),
    );
  }
}
